# To build an encryption method
# first define method
# create a loop to loop through index numbers
# break down string letters by their index number
# advance each index number by one
# print out string

# To build a decryption method
# the output of the encryption method needs to be our input
# method must break down string to index number

def encryptor(str)
  index = 0
  while index < str.length
    str[index] = str[index].next!
  index += 1
  end
  puts str
end

# def decrypt(str)
#   index = 0
#   while index < str.length
#     str[index] =


encryptor("zed     ")


