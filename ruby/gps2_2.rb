# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps:
  # split items into an array
  # access items individually
  # iterate through items and push to hash container along with assigning
  # default quantity for items
  # print the list to the console [can you use one of your other methods here?]
# output: output would be a hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: create hash with assigned key and value
  # push new hash to primary hash container
# output: new hash key and value

# Method to remove an item from the list
# input: primary hash container and item name key
# steps: remove item by accessing the appropriate hash key
# output: printed primary hash container items with appropriate item removed

# Method to update the quantity of an item
# input: name of hash container and appropriate key
# steps: access primary hash container and the appropriate key
  # set key value to new value
# output: hash key with new value

# Method to print a list and make it look pretty
# input: items
# steps: iterate through items with their key and values formatted to #specific layout
# output: printed format of key and value pairs

items = 'carrots apples cereal pizza'
empty_hash = {}


def create_list(items)
  each_item = {}
  food = items.split(' ')
  food.each do |item|
    each_item[item] = 0
  end
  each_item
end

def add_item(item)
  create_list(item)
end

def remove_item(item)
  item.delete('carrots')
end

def update_value(value)
  value['cereal'] = 2
end

def looking_good(empty_hash)
  puts "Our grocery list"
  puts "-" * 20
  empty_hash.each do |key, value|
    puts "Please buy: #{value} #{key}"
  end
end

p empty_hash.merge!add_item('bananas')
p empty_hash.merge!(create_list(items))
p remove_item(empty_hash)
p update_value(empty_hash)
looking_good(empty_hash)


