# Your Code Here
def map(array) 
  new = [] 
  x = 0 
  while x < array.length do 
    new.push(yield(array[x]))
    x += 1 
  end 
  return new 
end 

def reduce(array, sv = nil)
  if sv
    total = sv
    x =0 
  else 
    total = array[0]
    x = 1 
  end 
  while x < array.length do 
    total = yield(total,array[x])
    x += 1 
  end 
  return total 
end 