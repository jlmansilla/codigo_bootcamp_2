@title = %w[Clave Producto Marca Unidad Precio Categoría]
alert = ['Empresa 3bs', 'Catalogo de producto', '', 'Los datos del producto son:' , ' ']
@total = 0

productos = [
    %w[01ALI3bs Aceite miraflores 5000 litro abarrotes],
    %w[02ALI3bs azucar iansa 3000 litro abarrotes],
    %w[03ALI3bs mantequilla delsur 4500 litro abarrotes]
]

def salida(product)
  (@title.count).times { |locate| puts "#{@title[locate]}: #{product[locate]}" }  
  
  @total += product[3].to_f

  puts "precio con iva: #{format('%.2f', product[3].to_f * 1.19)}"
  puts ' '
end

alert.each { |out| puts out }
productos.each { |product| salida(product) }

puts "El precio total sin iva es: #{format('%.2f', @total)}"
puts "El precio total con iva es: #{format('%.2f', @total * 1.19)}"