=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

module ResistorColorDuo
	ColorCodes = { 
		"black" => 0,
		"brown" => 1,
		"red" => 2,
		"orange" => 3,
		"yellow" => 4,
		"green" => 5,
		"blue" => 6,
		"violet" => 7,
		"grey" => 8,
		"white" => 9
	}
	def self.hashedvalue(firstcolor, *lastcolor)
		ColorCodes.fetch(firstcolor) * 10 + ColorCodes.fetch(lastcolor.first)
	end
	def self.value(colors)
		ColorCodes.fetch(colors.first) * 10 + ColorCodes.fetch(colors.at(1))
	end
end