arreglo = [1, 2, 3, 4, 5, 6].select { |n| n.even? }
print arreglo
puts ''
puts arreglo.reduce {|a,b| a + b}
puts arreglo.reduce(:+)

x = [1,2,2,4]
y = [1,2,2,2]

puts x & y

print (1..10).find_all {|x| x % 3 ==0}
puts ' '
print x[1,3]
puts ' '
print x[1..3]
puts ' '
print x[1...3]
