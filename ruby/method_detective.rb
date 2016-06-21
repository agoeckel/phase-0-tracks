# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".sub("o","oo")
# => “zoom”

"enhance".center(15, " ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
"the usual" + " suspects"
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# The z character's ordinal number 122 which represents a position that z is in based in order of characters.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4

def swapcase_call (x)
  x.swapcase
end

puts swapcase_call ("iNvEsTiGaTiOn")

def too_many_spaces(spc)
  spc.squeeze
end

puts too_many_spaces("Elementary,    my   dear        Watson!")

def ordinals(char)
  char.ord
end

puts ordinals("z")

def string_count(str)
  str.count("a")
end

puts string_count("How many times does the letter 'a' appear in this string?")