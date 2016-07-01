class TodoList

  def initialize(array1 = [item1, item2])
    puts "Initializing to do list..."
    @array1 = array1
  end

  def get_items
    @array1
  end

  def add_item(item3)
    @array1 << item3
  end

  def delete_item(item4)
    @array1.delete(item4)
  end

  def get_item(index)
    @array1.at(index)
  end

end