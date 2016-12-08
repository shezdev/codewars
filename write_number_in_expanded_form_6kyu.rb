# https://www.codewars.com/kata/write-number-in-expanded-form/train/ruby
=begin
Write Number in Expanded Form

You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
=end

def expanded_form(num)
  # Your code here

  split_num = num.to_s.split('') # now an array of strings

  exp_num = []

while !split_num.empty? # While the array of numbers is not empty...

  puts "Split num is #{split_num}"
  length = split_num.length - 1
  # puts length
  exp_num.push(split_num.first + "0" * length)

  puts "expanded num is #{exp_num}"
  split_num.delete_at(0) # remove the first element of the array

  puts "Split num is now #{split_num} end of loop" #{i}"

end # end of while
#} # end of each

# 2. Clean up the numbers

x = exp_num.map(&:to_i) # Convert to integer so any 000 becomes 0
x.delete(0) # remove anything starting with 0
puts "x is #{x}"



# 3. Convert the array of integers into a strings with +  between each number.
x.map(&:to_s)
puts "3.x is #{x}"
#.gsub(/\D/, ' ')

x = x * " + "
puts "x is now #{x}"

return x

end #end of def


expanded_form(12071)


=begin
=================
OTHER solutions
=================
def expanded_form(num)
  expanded_nums = []
  num_ary = num.to_s.split('')
  num_ary.each_with_index do |n,i|
    expanded_nums << n + ((num_ary.length - (i+1)).times.collect{"0"}.join) unless n == "0"
  end
  expanded_nums.join(" + ")
end
--------------------
def expanded_form(num)
  num_arr = num.to_s.chars # ["9", "0", "0"]
  result = ''
  num_arr.each_with_index do |x, index|
    if x != '0'
      result = result + ' + ' if index != 0
      result = result + x + '0'*(num_arr.length - 1 - index)
    end
  end
  return result
end
--------------------
def expanded_form(num)
    div = 10
    arr = []

    while num > 0
        a = num % div
        unless a == 0
            arr << a
        end

        num -= a
        div *= 10
    end

    arr.reverse.join(' + ')
end
-----------------

def expanded_form(num)
  string = num.to_s
  length = num.to_s.length
  array = []
  0.upto(length - 1) do |i|
    string[i] == "0" ? nil : array << "#{string[i]}" + "0"*(length - (i + 1))
  end
  array.join(" + ")
end

=end
