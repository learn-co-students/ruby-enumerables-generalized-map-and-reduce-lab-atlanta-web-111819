def map_meth(array)
  new = []
  index = 0 
  
  while index < array.length {
    new.push(yield(array[i]))
  }
  return new
end
