# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
  new_name = name.split('')

  # new_name[0], new_name[1] = new_name[1], new_name[0]

  first_name = new_name[0]
   name1 = first_name.chars.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr('aeiou', 'eioua')
     else
      letter.next
     end
  end
  name1_array = []
  name1_array << name1
  p name1

  last_name = new_name[1]
   name2 = last_name.chars.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr('aeiou', 'eioua')
     else
      letter.next
     end
  end
  @combine = name2.join('') + name1.join('')
  p @combine
  # name2_array = []
  # name2_array << name2.join('')

  # combine_name = name1_array += name2_array
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