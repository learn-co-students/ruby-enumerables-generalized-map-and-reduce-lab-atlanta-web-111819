def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end

def reduce(array, starting_point=nil)
if starting_point
   new_num = starting_point
   index = 0
 else
   new_num = array[0]
   index = 1
 end
   while index < array.length do
     new_num = yield(new_num, array[index])
     index += 1
   end
   new_num
end
