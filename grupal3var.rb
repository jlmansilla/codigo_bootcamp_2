$num = 0
$totaliva = 0
def construye_clave(categoria, empresa = "3BS")
    $num += 1
    clave = "#{$num}#{categoria}#{empresa}"
    return clave
end

def calcula_iva(precio)
    iva = precio * 0.19
    total = precio + iva
    precio_total(total)
    return format('%.2f', total)
end

def precio_total(precio)
    $totaliva += precio
       
end
def salida (titles, products)
  titles.each_with_index do |title, index|
    print title.to_s.ljust(10)
    print ': '
    print products[index].to_s
    puts ' '
    
  end
  puts ' '
  
end
def imprime_totales
    print "El precio total con iva es: #{format('%.2f', $totaliva)}"
  puts ' '
end

print "---------------Empresa 3bs------------------------\n\n"
  
print "---------Catalogo de producto------------------------\n\n"
  
print "Los datos del producto son:\n\n"

salida(['Clave', 'Nombre', 'Marca', 'Unidad', 'Precio', 'Categoría'], [construye_clave('ABA'), 'Aceite', 'miraflores', 'litro', calcula_iva(5000), 'abarrotes'])
salida(['Clave', 'Nombre', 'Marca', 'Unidad', 'Precio', 'Categoría'], [construye_clave('ABA'), 'azucar', 'iansa', 'litro', calcula_iva(3000), 'abarrotes'])
salida(['Clave', 'Nombre', 'Marca', 'Unidad', 'Precio', 'Categoría'], [construye_clave('ABA'), 'mantequilla', 'delsur', 'litro',calcula_iva(4500), 'abarrotes'])
imprime_totales