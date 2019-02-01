class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
  :weight, :handed, :complexion, :t_shirt_size, 
  :wrist_size, :glove_size, :pant_length, :pant_width
  
  #self.send(("#{key}="), value) translates to mean the same thing as 
  #self.send(key=, value) which abstracts away the attribute reader/setter methods so 
  #we can essentially change our attr_accessors withiout changing our 
  #initialize method. Also, this code allows us to assign an arbitrary number of 
  #properties on initialization, so if only a few attributes are defined, 
  #the code will still work. It won't break! 


  def initialize (attributes)
    attributes.each {|key, value| 
    self.send(("#{key}="), value)}
  end

end

