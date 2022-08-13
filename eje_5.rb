require 'byebug'

@producto = {
  clave: "",
  nombre_producto: "",
  unidad: "",
  precio: "",
  categoria: ""
}

hash_prod1 = {
  clave: "01",
  nombre_producto: "Queso Mascarpone Fabiolio",
  unidad: "pza",
  precio: 25032,
  categoria: "Abarrotes"  
}

hash_prod2 = {
  clave: "02",
  nombre_producto: "Queso Mascarpone Fabiolio",
  unidad: "pza",
  precio: 25032,
  categoria: "Abarrotes"  
}

hash_prod3 = {
  clave: "03",
  nombre_producto: "Queso Mascarpone Fabiolio",
  unidad: "pza",
  precio: 25032,
  categoria: "Abarrotes"  
}

@productos = {
  :k1 => hash_prod1,
  :k2 => hash_prod2,
  :k3 => hash_prod3
}


def encuentra_producto
  puts "Ingrese id del producto a buscar"
  id = gets.chomp
  producto = @productos.select { | _key, producto| producto[:clave] == id }
  print producto.to_a[0][1]
end



def lee_catalogo
  products = File.read('catalogo2.txt').split("\n")
  @producto.keys
 
end
encuentra_producto
print lee_catalogo
