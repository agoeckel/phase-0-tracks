# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
  new_name = name.split(' ')
  new_name[0], new_name[1] = new_name[1], new_name[0]

  first_name = new_name[0]
   name1 = first_name.chars.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr('aeiou', 'eioua')
     else
      letter.next
     end
  end
  name1_array = []
  name1_array << name1.join('')

  last_name = new_name[1]
   name2 = last_name.chars.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr('aeiou', 'eioua')
     else
      letter.next
     end
  end
  name2_array = []
  name2_array << name2.join('')

  combine_name = name1_array += name2_array
  combine_name.join(' ')
end

puts 'Please enter a name'
name = gets.chomp
p name_changer(name)






