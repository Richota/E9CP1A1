# # Ejercicio 4: Constructor con argumentos.
# Crea una clase llamada *Dog* cuyo constructor reciba como argumento un *hash*
# con la siguiente estructura:
# ~~~ruby
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
# ~~~
# Instanciar un nuevo perro a partir de las propiedades contenidas en el *hash*.
# Luego generar un método llamado **ladrar** que, mediante interpolación,
# imprima *"Beethoven está ladrando!"*

class Dog
  attr_accessor :name
  def initialize(dogy)
    @dogy = dogy
    @name = @dogy[:nombre]
  end
  def ladrar
    "#{@name} está ladrando!\n"
  end
end

perro = Dog.new propiedades
print perro.ladrar if perro.is_a?Dog
