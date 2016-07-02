# class TodoList

#   def initialize(array1 = [item1, item2])
#     puts "Initializing to do list..."
#     @array1 = array1
#   end

#   def get_items
#     @array1
#   end

#   def add_item(item3)
#     @array1 << item3
#   end

#   def delete_item(item4)
#     @array1.delete(item4)
#   end

#   def get_item(index)
#     @array1.at(index)
#   end

# end

require_relative 'list'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end