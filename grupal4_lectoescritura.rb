#OPCION 5. Desarrollar un método que encuentre un producto en específico dentro de un arreglo.
require 'byebug'

def select_product(id = "")
    get_products.select { |product| product[0] == id}
end

#OPCION 7. Leer un archivo de texto ~> retorna un array con productos producto1 = [dato1, dato2, ... , daton]
def get_products

    products = File.read("catalogo_productos.txt").split("\n")
    products = products.map {|product| product.split(",")}
    return products
end
