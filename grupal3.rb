def salida(clave, producto, marca, precio, unidad, categoria)
    print "---------Empresa 3bs------------------------\n"
  
    print "---------Catalogo de producto------------------------\n"
  
    print 'Los datos del producto son:'
  
    puts "clave: #{clave}"
  
    puts "producto: #{producto}"
  
    puts "marca: #{marca}"
  
    puts "precio: #{precio}"
  
    puts "unidad: #{unidad}"
  
    puts "categoria: #{categoria}"
  
    @totalprecioiva = precio + precio * 0.19
  
    puts "precio con iva: #{@totalprecioiva}"
    totales(precio, @totalprecioiva)
  end
  
  def totales(siniva, coniva)
    @total += siniva
    @totaliva += coniva
  end
  
  @total = 0
  @totaliva = 0
  # contadoriva = 0
  
  puts salida('01ALI3bs', 'Aceite', 'miraflores', 5000, 'litro', 'abarrotes')
  
  # contador += 5000
  
  # contadoriva += @totalprecioiva
  
  puts salida('02ALI3bs', 'azucar', 'iansa', 3000, 'litro', 'abarrotes')
  
  # contador += 3000
  
  # contadoriva += @totalprecioiva
  
  puts salida('03ALI3bs', 'mantequilla', 'delsur', 4500, 'litro', 'abarrotes')
  
  # contador += 4500
  
  # contadoriva += @totalprecioiva
  
  puts "El precio total sin iva es: #{format('%.2f', @total)}"
  
  puts "El precio total con iva es: #{format('%.2f', @totaliva)}"
  