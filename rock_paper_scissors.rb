# X-Challenge 2: ROCK-PAPER-SCISSORS
# Make a rock-paper-scissors game.
# Prompt the user to make a choice between rock, paper, or scissors.
# If their input isn't valid, tell them and restart.
# If their input is valid, tell them, randomly pick a rock-paper-etc option.
# Using RPS match-up rules, tell the user who the winner is.
# Rock beats scissors.
# Scissors beats paper.
# Paper beats rock.
# You will need to google for random selection, but everything else should be from class already. Switch Cases, if/else, etc etc.
# use class
system('clear')

my_score = 0
comp_score = 0

exit_loop = true
while exit_loop
  sleep(1)
  print "Choose 1 - Rock, 2 - Paper, 3 - Scissors, 0 - to Exit: "
  input = gets.chomp
  if input == '1'
    user_choice = 'Rock'
    puts "\nYou chose Rock!"
  elsif input == '2'
    user_choice = 'Paper'
    puts "\nYou chose Paper!"
  elsif input == '3'
    user_choice = 'Scissors'
    puts "\nYou chose Scissors!"
  elsif input == '0'
    exit_loop = false
  else
    puts "Your choice is invalid. Try again."
  end
  rps_array = ['Rock', 'Paper', 'Scissors']
  computer = rps_array.sample
  sleep(0.5)
  puts "Computer chose #{computer}!"
  sleep(0.5)
  if user_choice == 'Rock' && computer == 'Rock'
    puts "\n--->Draw!"
  elsif user_choice == 'Rock' && computer == 'Paper'
    puts "\n--->You lost!"
    comp_score += 1
  elsif user_choice == 'Rock' && computer == 'Scissors'
    puts "\n--->You won!"
    my_score += 1
  elsif user_choice == 'Paper' && computer == 'Rock'
    puts "\n--->You won!"
    my_score += 1
  elsif user_choice == 'Paper' && computer == 'Paper'
    puts "\n--->Draw!"
  elsif user_choice == 'Paper' && computer == 'Scissors'
    puts "\n--->You lost!"
    comp_score += 1
  elsif user_choice == 'Scissors' && computer == 'Rock'
    puts "\n--->You lost!"
    comp_score += 1
  elsif user_choice == 'Scissors' && computer == 'Paper'
    puts "\n--->You won!"
    my_score += 1
  elsif user_choice == 'Scissors' && computer == 'Scissors'
    puts "\n--->Draw!"
  end
  sleep(0.5)
  puts "\nScore: Player #{my_score} : #{comp_score} Computer\n\n"
end