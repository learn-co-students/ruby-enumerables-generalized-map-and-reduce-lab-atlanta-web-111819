def map(source_array)
  new_array = []
  source_array.each do |item|
    new_array << yield(item)
  end
  new_array
end

def reduce(source_array, starting_value = 0)
  final_value = source_array[0].class == Integer ? starting_value : source_array[0]
  source_array.each do |item|
    final_value = yield(final_value, item)
  end
  final_value
end
