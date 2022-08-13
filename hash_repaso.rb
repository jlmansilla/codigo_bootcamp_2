eje_a = {
  a_1: 'uno',
  a_2: 'dos',
  a_3: 'tres'
}
puts :a_3.class
eje_b = {
  'a_2' => 'uno',
  'b_2' =>'dos',
  'c_2' => 'tres'
}

puts eje_a[:a_1]
puts eje_b['b_2']

eje_b = {
  'a_2' => 'uno',
  'b_2' => 'dos',
  'c_2' => 'tres'
}

eje_b.each do |key, value|
    puts "#{key} => #{value}"
end

eje_b = {
  a_1: 'uno',
  b_1: 'dos',
  c_1: 'tres'
}

puts eje_b.invert
puts eje_b.to_s
puts eje_b.keys

eje_a = {
    a_1: 'uno',
    b_2: 'vvvvv',
    c_1: 'tres',
}

eje_b = {
    a_2: 'uno',
    b_2: 'dos',
    c_2: 'tres'
}

puts eje_a.merge!(eje_a)
puts eje_b.merge!(eje_a)


