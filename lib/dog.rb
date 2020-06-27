class Dog
  attr_accessor :name, :breed
  
  def attributes
   id = NIL
   name = name
  end
  
  def initialize(attributes)
    attributes.each do |key, value|
      self.send "#{key}", value
    end
    
  end
  

end