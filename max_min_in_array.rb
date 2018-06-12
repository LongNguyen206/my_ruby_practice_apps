# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
#
# Example:
#
# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"
# Notes:
#
# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.
################################################################################
system('clear')

def high_low(number_list)
  array_str = number_list.split
  array_int = []
  non_number = false
  array_str.each do |element|
    if element != '0' && element.to_i == 0
      non_number = true
    else
      array_int.push(element.to_i)
    end
  end
  
  if non_number
    puts "  At least one of your inputs is not a number!"
  else
    puts "  Answer: #{array_int.max} #{array_int.min}"
  end
end

print "Enter your numbers, separated by space: > "
input = gets.chomp
if input.strip.empty?
  puts "  You must enter at least 1 number!"
else
  high_low(input)
end
