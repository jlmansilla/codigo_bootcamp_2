def salida2(producto) 
  #imprime los datos del productos, total precio iva, total 
  
  puts "clave: #{producto[0]}"
  puts "producto: #{producto[1]}"
  puts "marca: #{producto[2]}"
  puts "precio: #{producto[3]}"
  puts "unidad: #{producto[4]}"
  puts "categoria: #{producto[5]}"

  @totalprecioiva = producto[3] * 1.19

  puts "precio con iva: #{@totalprecioiva}"
  totales(producto[3], @totalprecioiva)
  puts ' '
end
def totales(siniva, coniva) #suma Total con y sin iva
  @total += siniva
  @totaliva += coniva
end
@total = 0
@totaliva = 0
print "-----------------Empresa 3bs------------------------\n"
print "---------Catalogo de producto------------------------\n"
puts ' '
print 'Los datos del producto son:'
puts ' '
#Definir las matrices
productos = [
  ['01ALI3bs', 'Aceite', 'miraflores', 5000, 'litro', 'abarrotes'],
  ['02ALI3bs', 'azucar', 'iansa', 3000, 'litro', 'abarrotes'],
  ['03ALI3bs', 'mantequilla', 'delsur', 4500, 'litro', 'abarrotes']]
  
  productos.each do |producto|
        salida2(producto)
  end


puts "El precio total sin iva es: #{format('%.2f', @total)}"
puts "El precio total con iva es: #{format('%.2f', @totaliva)}"
