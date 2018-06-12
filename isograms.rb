# Isograms
# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.
#
# is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false
# is_isogram("moOse" ) == false # -- ignore letter case
################################################################################
system('clear')

def isogram(word)
  array = word.downcase.chars #the string is converted to lower cases and turned into an array of characters
  len = array.length  #a variable that contains the number of characters in our string/array
  letter_count = 0  #initialising a repeated letters count variable
  for n in 0...len-1
    if array.sort[n] == array.sort[n+1]
      letter_count += 1
    end
  end
  if word == 'exit'
    puts "  Well, this word is also an isogram. Bye!"
    abort
  elsif letter_count > 0
    puts "  This word is not an isogram"
  else
    puts "  This word is an isogram. All letters are unique!"
  end
end

while true
  print "> Your word (or type 'exit' to quit): "
  input = gets.chomp
  isogram(input)
end
