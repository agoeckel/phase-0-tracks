# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
  new_name = name.split('')
  # new_name[0], new_name[1] = new_name[1], new_name[0]
     name.chars.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr('aeiou', 'eioua')
     else
      letter.next
     end
  end




  # first_name = new_name[0]
  #  name1 = first_name.chars.map! do |letter|
  #    if letter =~ /[aeiou]/
  #     letter.tr('aeiou', 'eioua')
  #    else
  #     letter.next
  #    end
  # end
  # # name1_array = []
  # # name1_array <<

  # last_name = new_name[1]
  #  name2 = last_name.chars.map! do |letter|
  #    if letter =~ /[aeiou]/
  #     letter.tr('aeiou', 'eioua')
  #    else
  #     letter.next
  #    end
  # end
  # @combine = name2.join('') + name1.join('')
  # p combine
  # name2_array = []
  # name2_array << name2.join('')

  # combine_name = name1_array += name2_array
end

# index = 3
# until index <= 0
#   puts 'Please enter a name'
#   @name = gets.chomp.downcase
#   name_changer(@name)
#   @empty_array = []
#   @empty_array << @combine
# end
# index =- 1

#   p @empty_array

p name_changer('Felicia Torres')

