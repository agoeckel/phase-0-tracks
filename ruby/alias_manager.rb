# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters

def name_changer(name)
  new_name = name.split(' ')
  new_name[0], new_name[1] = new_name[1], new_name[0]
  string = new_name.to_s
  replace = string.chars.map! do |letter|
    letter.next
  end
  p replace.join('')

















  # new_name = name.split(' ')
  # string = new_name.to_s









  # name.chars.each do |letter|
  #   name.join('')
  #   if letter =~ /[aeiou]/
  #     letter.tr!('aeiou', 'eioua')
  #   else
  #     letter.next!
  #   end
  #   array = []
  #   array << letter
  #   p array
  # end


  #
  # letter_split = new_name.to_s.split('')
  # letter_split.each do |letter|
  #   if letter == 'a'
  #     letter = 'e'
  #   else
  #     letter.next
  #   end
  # end





  # letter_split.chars.each do




   # new_name = new_name.join('')


   # p new_name[0]



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

