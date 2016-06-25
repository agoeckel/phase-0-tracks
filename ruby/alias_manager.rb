# Modify spys name by splitting the name and modifying the structure.
# Modify the name by initiating specific conditions such as (a,e,i,o,u)
# modify the name by adjusting conditional letters one letter forward in the given conditional parameters


@mod_name = []

def name_changer(name)
  name_split = name.split('')
  @letter_array = []
     new_name = name_split.map! do |letter|
     if letter =~ /[aeiou]/
      letter.tr!('aeiou', 'eioua')
     else
      letter.tr!('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB')
     end
      @letter_array << letter
  end
  word = @letter_array.join('')
  word.gsub!('!', ' ')
  array_word = word.split(' ')
  array_word[0], array_word[1] = array_word[1], array_word[0]

  @fullname = array_word.join(' ')
  p @fullname
end


puts 'what is your name?'
name = gets.chomp

@empty_array = []
until name == 'quit' || name == 'QUIT'

  @empty_array << name
  name_changer(name)

  @mod_name.push(@fullname)
  puts 'give me another name'
  name = gets.chomp

end

@empty_array.each_index do |index|
  puts "#{@mod_name[index]} is really #{@empty_array[index]}"
end





