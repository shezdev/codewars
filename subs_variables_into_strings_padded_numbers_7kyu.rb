# http://www.codewars.com/kata/substituting-variables-into-strings-padded-numbers/train/ruby

# solution(5) # should return "Value is 00005"

# rjust(integer, padstr=' ') → new_str

# If integer is greater than the length of str, returns a new String of length integer with str right justified and padded with padstr; otherwise, returns str.
=begin

"hello".rjust(4)            #=> "hello"
"hello".rjust(20)           #=> "               hello"
"hello".rjust(20, '1234')   #=> "123412341234123hello"

=end

def solution(value)
# puts   "Value is "+"#{value}".rjust(5, "0")
puts "Value is " << "#{value}".rjust(5, "0") #could use + instead of <<
end


solution(5)
