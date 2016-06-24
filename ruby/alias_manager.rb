# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
   name.split('').to_s
   name.chars.each do |letters|
     if letters =~ /[aeiou]/
       letters.tr!('aeiou', 'eioua')
     else letters.next!
     end
   end
   # new_name = new_name.join('')


   # p new_name[0]
   # new_name[0], new_name[1] = new_name[1], new_name[0]


   # puts new_name.class
   # new_name = new_name.split('')
   # p new_name




   #



       # letters.next!
   # end

     # array = []
     # array.push(letters)
     # puts array[0]
     # index.times {|letter| p letter + letter}


    # vowels = each_letter.select! {|vowel| vowel =~ /[aeiou]/}
    # p vowels.join('')

end

empty_array = []

puts "Please type your name"
print "> "
# name = gets.chomp
p name_changer('Felicia Torres')

