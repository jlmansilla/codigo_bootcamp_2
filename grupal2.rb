require 'byebug'

puts 'Cuántos productos tiene para ingresar'
products_number = gets.chomp.to_i

titles = ['Clave', 'Nombre', 'Marca', 'Unidad', 'Precio', 'Categoría']
products = []

products_number.times do |product|
  titles.each do |title|
    puts "ingrese el #{title} del producto #{product + 1}"

    products << gets.chomp
  end
end

titles.each do |title|
  print title.to_s.ljust(10)
end

puts " "

count_position = 0

products_number.times do |product|
  (titles.count).times do |title|
    print products[count_position].to_s.ljust(10)

    count_position += 1
  end
  puts " "
end