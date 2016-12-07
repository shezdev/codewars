# https://www.codewars.com/kata/sum-up-the-random-string
=begin
Given a random string consisting of numbers, letters, symbols, you need to sum up the numbers in the string.

Note:

    Consecutive integers should be treated as a single number. eg, 2015 should be
    treated as a single number 2015, NOT four numbers
    All the numbers should be treaded as positive integer. eg, 11-14 should be treated
    as two numbers 11 and 14. Same as 3.14, should be treated as two numbers 3 and 14
    If no number was given in the string, it should return 0


=end

def sum_from_string(str)
  # str.gsub(/\D/, ' ')}" -  \D matches non-digits and replaces with a space " "
  # .split(" ")} - Using .split(" ") to separate the string into an array of strings or use str.split(/\s/)
  # .map(&:to_i) - converts type from an array of strings to an array of integers.
  # Now can use .each {|i| sum += i} to add the ints and put in variable called sum

sum = 0
str.gsub(/\D/, ' ').split(" ").map(&:to_i).each {|i| sum += i}
# puts "#{str.gsub(/\D/, ' ').split(" ").map(&:to_i).each {|i| sum += i} }"
return sum

# puts sum
end

# My Tests
sum_from_string("In 2015, I want to know 4 how much does iPhone 6+ cost?") #2025
# sum_from_string("1+1=2")# == 4
# sum_from_string("e=mc^2") #2

#Other solutions:
#-------------------
=begin

def sum_from_string(str)
  str.scan(/\d+/).map(&:to_i).reduce(0, :+)
end
#-------------------
def sum_from_string(str)
  str.scan(/\d+/).map(&:to_i).inject(:+) || 0
end
#-------------------
def sum_from_string(string)
  arr = Array.new

  k = 0
  len = string.length
  while k <= len
    j = k
    nu = ""
    for i in j...len
      if (string[i]  == "1")||(string[i]  == "2")||(string[i]  == "3")||(string[i]  == "4")||(string[i]  == "5")||(string[i]  == "6")||(string[i]  == "7")||(string[i]  == "8")||(string[i]  == "9")||(string[i]  == "0")
        k = k + 1
        nu << string[i].to_s
      else
        break
      end
    end

    if nu != ""
      arr.push(nu)
    end

    k = k + 1
  end
  sum = 0
  arr.each do |a|
    a = a.to_i
    sum = a + sum
  end
  return sum
end
#-------------------
def sum_from_string(str)
  count = str.scan(/\d+/).map(&:to_i).inject(0, :+)
end
#-------------------
def sum_from_string(str)
  str =~ /\d/ ? str.scan(/\d+/).map(&:to_i).reduce(:+) : 0
end

=end
