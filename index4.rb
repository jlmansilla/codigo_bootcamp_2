def salida2(titulos, producto)
  # imprime los datos del productos, total precio iva, total

  titulos.each_with_index do |title, index|
    print title

    print ': '

    print producto[index].to_s

    puts ' '
  end

  puts ' '

  # print "El precio total con iva es: #{format('%.2f', $totaliva)}"

  # @totalprecioiva = producto[3] * 1.19

  # puts " #{producto[0]}  #{producto[1]}  #{producto[2]}  #{producto[3]}  #{producto[4]}   #{producto[5]}  #{@totalprecioiva}"

  totales(producto[3], @totalprecioiva)
end

def totales(siniva, coniva) # suma Total con y sin iva
  @total += siniva

  @totaliva += coniva
end

def imprimetotales
  puts "El precio total sin iva es: #{format('%.2f', @total)}"

  puts "El precio total con iva es: #{format('%.2f', @totaliva)}"
end

@total = 0

@totaliva = 0

print "-----------------Empresa 3bs------------------------\n"

print "-------------Catalogo de producto--------------------\n"

puts ' '

print 'Los datos del producto son:'

puts ' '

puts 'clave    producto    marca    precio    unidad    categoria'

# Definir las matrices

titulos = %w[clave producto marca precio unidad categoria]

productos = [

  ['01ALI3bs', 'Aceite', 'miraflores', 5000, 'litro', 'abarrotes'],

  ['02ALI3bs', 'azucar', 'iansa', 3000, 'litro', 'abarrotes'],

  ['03ALI3bs', 'mantequilla', 'delsur', 4500, 'litro', 'abarrotes']

]

productos.each do |producto|
  salida2(titulos, producto)
end

imprimetotales
