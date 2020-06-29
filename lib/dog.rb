class Dog
  
  ATTRIBUTES = {
    :id => "INTEGER PRIMARY KEY",
    :name => "TEXT",
    :breed => "TEXT"
  }

  ATTRIBUTES.keys.each do |attribute_name|
    attr_accessor attribute_name
  end

  def initialize(params)
    params.each do |key, value|
      self.send "#{key}=", value
    end
  end

  def self.table_name
    "#{self.to_s.downcase}s"
  end

  def self.create_table
    # sql = "CREATE TABLE IF NOT EXISTS #{self.table_name}"
    # DB[:conn].execute(sql)
  end


end