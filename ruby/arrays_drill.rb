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

