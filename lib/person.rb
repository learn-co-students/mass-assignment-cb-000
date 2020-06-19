#Initial code: 
#
#class Person
  #your code here
#  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width 

 # def initialize(name: "Avi" , birthday: "Magic", hair_color: "Magic" , eye_color:"Magic", height:"Magic", weight:"Magic", handed:"Magic", complexion:"Magic", t_shirt_size:"Magic", wrist_size:"Magic", glove_size:"Magic", pant_length:"Magic", pant_width:"Magic")
#  	@name = name
 # 	@birthday = birthday
  #	@hair_color = hair_color
  #	@eye_color = eye_color
  #	@height = height
  #	@weight = weight
  #	@handed = handed
  #	@complexion = complexion
  #	@t_shirt_size = t_shirt_size
  #	@wrist_size = wrist_size
  #	@glove_size = glove_size
  #	@pant_length = pant_length
  #	@pant_width = pant_width
 # end
#end

class Person
	attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width 

	def initialize(attributes)
		attributes.each {|key, value| self.send(("#{key}="), value)}
	end
end
