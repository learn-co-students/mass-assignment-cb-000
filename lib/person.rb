class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight
  attr_accessor :handed, :complexion, :t_shirt_size, :wrist_size
  attr_accessor :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, val|
      self.send("#{key}=",val)
    end
  end
end
