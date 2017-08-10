class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color,
    :height, :weight, :handed, :complexion,
    :t_shirt_size, :wrist_size, :glove_size,
    :pant_length, :pant_width, :handed

  def initialize(attributes)
      # instance_variable_set(":#{key}",value)
      # instance_variable_get("@:#{key}")
      attributes.each do |key, value|
        self.send("#{key}=", value)
    end
  end
end
