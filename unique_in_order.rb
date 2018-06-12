# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
#
# For example:
#
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]
################################################################################
system('clear')

def unique_in_order(sequence)
  array = sequence.chars
  len = array.length
  letter_count = 0
  new_array = []
  for n in 0..len-1
    unless array[n] == array[n+1]
      if array[n].digits?
        new_array.push(array[n].to_i)
      end
    end
  end
  if sequence == 'exit'
    abort
  else
    puts "#{new_array}"
  end
end

while true
    print "> Your word (or type 'exit' to quit): "
    input = gets.chomp
    if input.strip.empty?
      puts "  Empty input!"
    else
      unique_in_order(input)
    end
end
