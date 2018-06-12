# Vowel Count
# Return the number (count) of vowels in the given string.
#
# We will consider a, e, i, o, and u as vowels for this challenge.
#
# The input string will only consist of lower case letters and/or spaces.
################################################################################
system('clear')

def vowel_count(word) #the parameter is a single string
  array = word.downcase.chars #the string is converted to lower cases and turned into an array of characters
  len = array.length  #a variable that contains the number of characters in our string/array
  letter_count = 0  #initialising a repeated letters count
  for n in 0..len-1
    if array[n] == 'a' || array[n] == 'e' || array[n] == 'i' || array[n] == 'o' || array[n] == 'u'
      letter_count += 1
    end
  end
    if word == 'exit'
      abort
    elsif letter_count == 0
      puts "  This string has no vowels"
    elsif letter_count == 1
      puts "  This string has 1 vowel"
    else
      puts "  This string has #{letter_count} vowels"
    end
end

while true
    print "> Your word (or type 'exit' to quit): "
    input = gets.chomp
    if input.strip.empty?
      puts "  Empty input!"
    else
      vowel_count(input)
    end
end