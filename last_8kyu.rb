# http://www.codewars.com/kata/last/train/ruby
=begin

Find the last element of a list.

Example:

last( [1,2,3,4] ) # => 4
last( "xyz" ) # => z
last( 1,2,3,4 ) # => 4

=end

def last (*arg, arg_last)
  arg_last.respond_to?(:index) ? arg_last[-1] : arg_last
end


last([1,2,3,4,5]) #5
last("abcde") # "e"
last(1, "b", 3, "d", 5) # 5
