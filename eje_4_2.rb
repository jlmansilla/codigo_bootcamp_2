#def menu
require 'byebug'

def select_product
  id = gets.chomp

  @get_products.select { |product| product[0] == id }
end

def agregar
  puts "\nIngrese la información que desea agregar (ejemplo: clave, nombre, unidad, precio, promoción, categoría, subcategoría)"
  nuevo_producto = gets
  File.write("catalogo_productos.txt", nuevo_producto, mode:"a")
  @get_products = get_products
end

#OPCION 7. Leer un archivo de texto ~> retorna un array con productos producto1 = [dato1, dato2, ... , daton]
def get_products
  products = File.read("catalogo_productos.txt").split("\n")

  products.map { |product| product.split(",") } 
end

def array_precios
  @get_products.map { |product| product[3] }
end


def get_valor
  puts "Ingrese el precio que desea buscar"
  precio = gets.chomp.to_i

  if array_precios.include?(precio)
    puts "El precio #{precio} se encuentra en el arreglo"
  else
    puts "El precio #{precio} no se encuentra en el arreglo"
  end
end

#----------------------------fin metodo lectoescritura----------------------------
begin
    @get_products = get_products
    opcion = 100
    while opcion != 0
      print "|-" * 20 + "\n"
      puts "1. Generar un arreglo de precios"
      puts "2. Generar un arreglo de precios con impuestos y crea precios finales"
      puts "3. Ordenar arreglo de precios finales ascendentemente"
      puts "4. Buscar un produto en un arreglo"
      puts "5. Buscar un precio que cumpla ciertas condiciones"
      puts "6. Imprimir un arreglo ordenado ascendentemente"
      puts "7. Leer un archivo de texto"
      puts "8. Agregar un registro de txt"
      puts "0. Salir"

      puts "Ingrese una opción: "
      opcion = gets.chomp.to_i
      case opcion
      when 1
        get_valor
      when 2
        precios_finales = puts "El arreglo de precios con impuestos es:"
      when 3
        puts "El arreglo de precios finales ordenado ascendentemente es: #{array_precios.sort}"
      when 4
        puts "Ingrese el id del producto que desea buscar: "
        select_product
      when 5
        get_valor
      when 6 
        then puts "El arreglo de precios finales ordenado ascendentemente es: #{array_precios.sort}" unless  array_precios.empty?
      when 7
        puts "El arreglo de productos es: #{@get_products}"
      when 8
        agregar
      when 9
        puts "Gracias por usar el programa"
      when 0
        opcion != 0
      else
        puts "Opción no válida"
      end

      puts ''
      puts ''
      puts ''
      puts ''
      puts ''
    end
  end
#end 


#-----------------fin metodo menu-----------------

#OPCION 5. Desarrollar un método que encuentre un producto en específico dentro de un arreglo.
