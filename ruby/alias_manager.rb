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
  word = @letter_array.join('')
  word.gsub!('!', ' ')
  array_word = word.split(' ')
  array_word[0], array_word[1] = array_word[1], array_word[0]
  p array_word

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


  # @empty_array.each_index do |index|
  #   puts "#{@empty_array[index]} is really #{@full_name[index]}"
  # end



