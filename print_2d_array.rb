arr = [
  ['A', 'B', 'C'],
  ['D', 'E', 'F'],
  ['G', 'H', 'I']
]

arr.each do |inner_arr|
  inner_arr.each do |word|
    p word
  end
end