# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
  name_split = name.split('')
  @letter_array = []
     new_name = name_split.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr!('aeiou', 'eioua')
     else
      letter.next!
     end
      @letter_array << letter
  end
  p @letter_array.length





  # new_name[0], new_name[1] = new_name[1], new_name[0]


end



puts 'what is your name?'
name = gets.chomp
@empty_array = []
until name == 'quit'
  name_changer(name)
  @empty_array << name
  puts 'give me another name'
  name = gets.chomp
end

p @empty_array




# def name_output(empty_array, name_array)
#   @empty_array.each_index do |index|
#     puts "#{@empty_array[index]} is really #{@name_array[index]}"
#   end
# end


# name_output(@empty_array, @name_array)