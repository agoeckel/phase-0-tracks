# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
   new_name = name.split(' ')
   new_name[0], new_name[1] = new_name[1], new_name[0]
   name = new_name
   name.each do |letters|
     if letters =~ /[aeiou]/
       letters.tr!('aeiou', 'eioua')
     # elsif letters == 'e'
     #   letters.gsub!('e', 'i')
     # elsif letters == 'i'
     #   letters.gsub!('i', 'o')
     # elsif letters == 'o'
     #   letters.gsub!('o', 'u')
     # elsif letters == 'u'
     #   letters.gsub!('u', 'a')
     else
      letters.next!
     end
   end


    # vowels = each_letter.select! {|vowel| vowel =~ /[aeiou]/}
    # p vowels.join('')

end

empty_array = []

puts "Please type your name"
print "> "
name = gets.chomp
p name_changer(name)

