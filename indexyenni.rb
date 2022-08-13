def salida(titles, productos) 
    #imprime los datos del productos, total precio iva, total 
    
    titles.each_with_index do |title, index|
        print title
        print ': '
        print productos[index].to_s
        puts ' '
        
      end
      puts ' '
      #print "El precio total con iva es: #{format('%.2f', $totaliva)}"
  end
  def totales(siniva, coniva) #suma Total con y sin iva
    @total += siniva
    @totaliva += coniva
  end
  @total = 0
  @totaliva = 0
  
  #Definir las matrices
  producto1=['01ALI3bs', 'Aceite', 'miraflores', 5000, 'litro', 'abarrotes']
  producto2=['02ALI3bs', 'azucar', 'iansa', 3000, 'litro', 'abarrotes']
  producto3=['03ALI3bs', 'mantequilla', 'delsur', 4500, 'litro', 'abarrotes']
  productos = []
  productos << producto1 << producto2 << producto3
  #llamar al metodo salida con 3 productos
  print "-----------------Empresa 3bs------------------------\n"
  print "---------Catalogo de producto------------------------\n"
  puts ' '
  print 'Los datos del producto son:'
  puts ' '
  titles=['Clave', 'Nombre', 'Marca', 'Unidad', 'Precio', 'Categoría']
productos.each_with_index do |producto|
  salida(titles, producto)
end
  
#   puts "El precio total sin iva es: #{format('%.2f', @total)}"
#   puts "El precio total con iva es: #{format('%.2f', @totaliva)}"
    