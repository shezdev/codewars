# https://www.codewars.com/kata/sort-and-star/train/ruby

# You will be given an vector of string(s). You must sort it alphabetically
# (case-sensitive!!) and then return the first value. The returned value must
# be a string, and have '***' between each of its letters.

# Note the test show an array of strings.

# Gogle searches for "ruby .sort", "ruby .first", "ruby.scan", "ruby.join"

def two_sort(s)
#s.sort - this will return a sorted list - this is an Array function
#s.first - returns the 1st element - this is also an Array function
#s.scan(/.{1}|.+/) - splits into an array of letters - this is a string method
#.join("***") - joins the letters together & inserts 3 starts between each letter - This is an Array function
s.sort.first.scan(/.{1}|.+/).join("***")
end

# My Test
#should output 'b***i***t***c***o***i***n' );
# puts two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"])


=begin
Other solns:

def two_sort(s)
  s.min.chars.join('***')
end

def two_sort(s)
  s.sort.first.chars.join('***')
end

def two_sort(s)
  result = s.sort.first.split("").join("***")
end

def two_sort(s)
s.sort!
f = s[0].split("")
m = f.map {|x| x + "***"}
m.join[0...-3]
end

=end
