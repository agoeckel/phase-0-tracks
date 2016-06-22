def array_output(value1, value2, value3)
  empty_array = []
  empty_array += [value1, value2, value3]
end


def array_arg(array=[],argument)
  array << argument
end


empty_array = []
p empty_array

empty_array += ["item1", "item2", "item3", "item4", "item5"]
p empty_array

empty_array.delete_at(2)
p empty_array

empty_array.insert(2, "new_item")
p empty_array

empty_array.shift
p empty_array

p empty_array.find_index("item3")

another_array = ["stuff1", "stuff2", "stuff3"]

new_array = empty_array + another_array
p new_array

p array_output("hi", false, 3)
p array_arg(["a","b","c",1,2], "a")

p array_output("trial1", 34, "test")
p array_arg(["testarg", "testing"], 50)