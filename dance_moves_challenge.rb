# Challenge 1: Dance challenge :
# Step 1: Get 5  dance moves from the user and create a list of dance moves
# Ensure you don't duplicate any dance moves.
# Print out each of dance move
# Step 2: For the above challenge: Introduce 3 options to the user
# Add- Add dance move
# Exit - exit the program
# Print - Display the dance moves in the list
################################################################################

#Cleaning the terminal screen at the start of the program
system('clear')
#Tactical pause
sleep(1)

#Defining a method that will add moves to the moves list
def adding_dance(dance_list) #we include the parameter (dance_list) which is the array of moves we will be working with
  print "Insert a dance: " #prompt user to insert a move name
  insert_dance = gets.chomp.downcase #the input is stored in a variable called insert_dance, we also immediately transform any input to lower cases for further comparison
    if insert_dance.strip.empty?#here we check if the user didn't type in anything, i.e. just clicked Enter or Space bar (strip will cut out all the spaces and then we check if the string is empty)
      puts "    !> Empty input!" #A warning for empty input
    elsif insert_dance.to_i != 0 || insert_dance == '0'#here we check if the input is a number and not a string
      puts "    !> It's a number!"
    elsif dance_list.include? insert_dance #here we check if the inserted dance already exists in our array of dances
      puts "    !> This dance already exists!"
    else
      puts "    >Dance added!"
      dance_list.push(insert_dance) #anything that is not an empty entry or a duplicate gets added to the array of dances
    end
end

#A method to display your existing moves array
def display_dances(dance_list)  #do not be confused by the same parameter name  (dance_list) as in the method above. The parameter can be named anything here as the two methods are separate structures
  puts "\nYour dances: "
  dance_list.each do |moves|  #a loop to output each element in the dance array
    puts "      -#{moves.capitalize} " #here we use capitalize method to convert the first character to upper case and the rest to lower case
  end
end

#Actual program starts here
dance_moves = [] #we start with an empty array of moves, this array is separate from the array in the methods and will serve as the parameter for the methods when we call them

until dance_moves.size == 5 #a loop that ensures that the dance array will include 5 non-empty, non-digit and non-duplicate moves (as numbers, empty input and duplicates are filtered out in the method definition, look above)
  adding_dance(dance_moves) #calling the adding_dance method to add dances
end

display_dances(dance_moves) #calling a method to display our current array of dance moves

#Now we are going to offer the user 3 options:
sleep(0.5) #tactical pause
puts "\nOptions: \n  1 - Add a dance \n  2 - Display dance moves in a list \n  3 - Exit" #a menu of options, the \n ensures the new option is displayed on a new line, purely visual feature
exit_loop = true #creating a flag to exit the loop
while exit_loop #a loop that ensures the user can use the program as much as he/she likes (in our case, until he presses the Exit option)
sleep(0.5) #tactical pause
print 'Choose an option: '#prompt user for an option
answer = gets.chomp
  if answer == '1' #if the user chooses first option aka types in '1'
    adding_dance(dance_moves) #then call the method of adding moves once
  elsif answer == '2' #if the user chooses 2nd option
    display_dances(dance_moves) #then call the method to display the dance array. !Notice we are still working with the same array of moves (dance_moves), which ensures all the entered moves are remembered
  elsif answer == '3'
    exit_loop = false #an option to exit the program, switches the flag to 'false'
  else
    puts "Invalid selection. Try again" #any other input (except 1,2,3) will result in this message
  end
end

#That's it!