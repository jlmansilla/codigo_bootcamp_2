#def menu
    begin
      print "|-" * 20 + "\n"
      puts "1. Generar un arreglo de productos"
      puts "2. Generar un arreglo  de precios"
      puts "3. Generar un arreglo de precios con impuestos y crea precios finales"
      puts "4. Ordenar arreglo de precios finales ascendentemente"
      puts "5. Buscar un produto en un arreglo"
      puts "6. Buscar un precio que cumpla ciertas condiciones"
      puts "7. Imprimir un arreglo ordenado ascendentemente"
      puts "8. Leer un archivo de texto"
      puts "8. Agregar un registro de txt"
      puts "0. Salir"
      
      puts "Ingrese una opción: "
      opcion = gets.chomp.to_i

      case opcion
        when 1
            get_products
        when 2
            get_prices
        when 3
            precios_finales = puts "El arreglo de precios con impuestos es: #{array_precios.map { |precio| precio * 1.19 }}"
        when 4
            puts "El arreglo de precios finales ordenado ascendentemente es: #{array_precios.sort}"
        when 5
            puts "Ingrese el id del producto que desea buscar: "
            id = gets.chomp
            select_product(id)
        when 6
            puts "Ingrese el precio que desea buscar"
            precio = gets.chomp.to_i
            if array_precios.include?(precio)
            puts "El precio #{precio} se encuentra en el arreglo"
            else
            puts "El precio #{precio} no se encuentra en el arreglo"
            end
        when 7 then puts "El arreglo de precios finales ordenado ascendentemente es: #{array_precios.sort}" unless  array_precios.empty?
        when 8
            puts "El arreglo de productos es: #{array_productos}"
        when 9
            puts "El arreglo de precios es: #{array_precios}"
        when 0
            puts "Gracias por usar el programa"
        else
            puts "Opción no válida"
      end
    end while opcion != 0
#end 
