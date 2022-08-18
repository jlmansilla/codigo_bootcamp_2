require_relative 'producto'
#include ::Class::Categoria

#class Init
    #include Producto
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    print "-----------------Catalogos de Producto-----------------\n\n"  
  puts '1. Alta de Marca'
  puts '2. Alta de categoría'
  puts '3. Alta de producto'
  puts '4. Buscar producto por clave'
  puts '0. Salir'

    opcion = gets.chomp.to_i
    
    case opcion when 1 then
        alta_marca
    when 2 then
        alta_categoria
    when 3 then
        alta_producto
    when 4 then
        producto = Producto.new
        producto.buscar_producto
    when 0 then
        puts 'Saliendo del programa'
    else
        puts 'Opción no válida'
    end

end while opcion != 0
#end