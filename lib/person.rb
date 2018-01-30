class Person
  # Create a Person class that accepts a hash upon initialization
  # Each key in the attributes hash will become a property of an initialized Person instance. So, you should make an attr_accessor for each of the properties
  # The initialize method should use iteration and the .send method to mass assign the value of each key/value pair to its associated key (i.e. method)

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each { |key, value| self.send("#{key}=", value)}
  end
end


=begin

  Notes
  1. define the initialize method to take in some unspecified attributes object
  2. iterate over each key/value pair in the attributes hash --> attributes.each {...}
  3. the key becomes a setter method --> #{key}= becomes instance.key= --> #{name}= becomes name= method --> instance.name=
  4. The value associated with the key becomes the value passed to that method --> instance.key = value -->  instance.name = someName
  5. .send then calls the 'key' method with 'value' as its argument --> self.send(key=, value) --> which is the same as: instance.key = value
  6. .send allows us to abstract away the specific method name that is being called
  7. self refers to the instance that is being initialized at that point in time

=end
