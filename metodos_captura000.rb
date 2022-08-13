def productos
    puts "\n¿Cuántos productos desea ingresar al arreglo? :"
    cantidad = gets.chomp.to_i
    array_productos = []

    for i in (0..cantidad-1) do
        print " Producto #{i + 1}  \n\n"
        print "* Clave          :" 
        clave = gets.chomp.to_i
        print "* Nombre         :" 
        nombre= gets.chomp
        print "* Unidad         :" 
        unidad= gets.chomp
        print "* Precio         :" 
        precio= gets.chomp.to_i
        print "* Categoria      :" 
        categoria= gets.chomp
        print "* SubCategoria   :" 
        subcategoria= gets.chomp
        
        
        array_productos[i] = clave,nombre,unidad,precio,categoria,subcategoria
        
    end    
end

def precios
    puts "\n¿Cuántos precios desea ingresar al arreglo? :"
    cantidad = gets.chomp.to_i
    array_precios = []

    for i in (0..cantidad-1) do
        print " Precio #{i + 1}    \n\n"
        
        print "* Precio         :" 
        precio= gets.chomp.to_i
        
        
        
        array_precios[i] = precio
        
    end
end

