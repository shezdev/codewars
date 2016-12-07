# https://www.codewars.com/kata/fake-binary/train/ruby

# Given a string of numbers, you should replace any number below 5 with '0'
# and any number 5 and above with '1'. Return the resulting string.

def fake_bin(s)
  # Insert you code here...
  # Got it wrong so many times...
  # s.gsub(/[0-4][5-9]/, '0''1')
  # s.gsub(/[0-4 5-9]/, 0-4 => '0' 5-9 =>'1')
  # s.gsub(/[0-4 5-9]/, 0-4 => 0 5-9 =>1)
  # s.gsub(/[0-4 5-9]/, 0-4 => 0 5-9 =>1)
  #  s.gsub(/[0-4 5-9]/, '0' '1')
 # s = s.gsub(/0-4]/, '0') && s.gsub(/5-9]/, '1')

# Finally!
  s.gsub(/[01234]/, '0').gsub(/[56789]/, '1') #append a second gsub onto the s
end
