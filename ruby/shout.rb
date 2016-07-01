# module Shout
#   def self.yell_angrily(words)
#     words.upcase + '!!!' + ':('
#   end

#   def self.yelling_happily(words)
#     words.upcase + '!!!' + 'I\'m so happy!!'
#   end
# end

# p Shout.yell_angrily('ahhhh')
# p Shout.yelling_happily('yay')

module Shout
  def yelling(words)
    puts 'I can\'t stand ' + words.upcase + '!!!' + ' >:('
  end

  def excitment(thing)
    puts "I'm so excited for #{thing.upcase}!!!"
  end

end

class Yell
  include Shout
end

class Excited
  include Shout
end

grandpa = Yell.new
grandpa.yelling('cheese')

child = Excited.new
child.excitment('recess')