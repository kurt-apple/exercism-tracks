=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
	attr_accessor :the_matrix
	def initialize(matrix_input)
		if matrix_input.is_a?(String)
			self.the_matrix = matrix_input.split("\n").map!{|row| row.split(" ")}.map!{|row| row.map!{|cell| cell.to_i}}
		end
	end
	def columns
		the_matrix.transpose
	end
	def rows
		the_matrix
	end
end