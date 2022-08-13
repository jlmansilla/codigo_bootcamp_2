require "byebug" 
require "rubocop"

a = "RRGGBBYYKK"

for i in 1..20 do
  puts a

  a = a[1...]
  letra = a[0]

  a << letra
end

b = "++*~~*++*"

(1..20).each do |i|
  puts b
  b = b[1...]+b[0]
end

letras = "=|/|/|=|/|"
puts letras

20.times do 
  letras = (letras[1...] + letras[0])
  puts letras
end
