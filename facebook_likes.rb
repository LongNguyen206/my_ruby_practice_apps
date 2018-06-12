# Challenge:  Facebook Likes : You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
# Implement a function likes, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this
# change text color
##############################################

system('clear')
require('colorize')

def first_letter_caps(string)
  string = string[0].upcase + string[1..string.length].downcase
end

puts "Who liked it? (insert an empty string to finish): "
name_array = []
prompt = '> '
exit_loop = true
while exit_loop
print prompt
inserted_name = gets.chomp
    if name_array.include? inserted_name
      puts "  !This person already liked it!".yellow
    elsif inserted_name.to_i != 0 || inserted_name == '0'
      puts "  !Not a name!".red
    elsif inserted_name.strip.empty?
      exit_loop = false
    else
      name_array.push(inserted_name)
    end
end

puts "░░░░░░░░░░░░▄▄
░░░░░░░░░░░█░░█
░░░░░░░░░░░█░░█
░░░░░░░░░░█░░░█
░░░░░░░░░█░░░░█
███████▄▄█░░░░░██████▄
▓▓▓▓▓▓█░░░░░░░░░░░░░░█
▓▓▓▓▓▓█░░░░░░░░░░░░░░█
▓▓▓▓▓▓█░░░░░░░░░░░░░░█
▓▓▓▓▓▓█░░░░░░░░░░░░░░█
▓▓▓▓▓▓█░░░░░░░░░░░░░░█
▓▓▓▓▓▓█████░░░░░░░░░█
██████▀░░░░▀▀██████▀"

l = name_array.size
if l == 0
  puts "\n> no one likes it"
elsif l == 1
  puts "\n> #{first_letter_caps(name_array[0])} likes it"
elsif l == 2
  puts "\n> #{first_letter_caps(name_array[0])} and #{first_letter_caps(name_array[1])} like it"
elsif l == 3
  puts "\n> #{first_letter_caps(name_array[0])}, #{first_letter_caps(name_array[1])} and #{first_letter_caps(name_array[2])} like it"
else
  puts "\n> #{first_letter_caps(name_array[0])}, #{first_letter_caps(name_array[1])} and #{name_array.size - 2} others like it"
end
