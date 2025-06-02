class Hogar{
  var property nivelDeMugre
  const nivelDeConfort
  method esBueno() = nivelDeMugre <= nivelDeConfort / 2
}

class Huerta{
  var property capacidadDeProduccion
  var valor = 10

  method esBueno() = capacidadDeProduccion > valorDeLaHuerta.valor()
}

object valorDeLaHuerta{
  var property valor = 10
}

class Mascota{
  var nivelDeSalud

  method esBueno() = 250 < nivelDeSalud
}

//plagas
class Plaga{
  var property poblacion
  method transmiteEnfermedades() = poblacion >= 10
}

class Cucarachas inherits Plaga{
  var property peso

  method promedio() = peso / poblacion

  method nivelDeDanio() = poblacion / 2

  override method transmiteEnfermedades() = super() && self.promedio() >= 10
  //"override" sobreescribe el método, pero no pierde su funcionalidad. :´(
  //"super" sube una clase y ejecuta el método, y si no lo entiende sigue subiendo.
}  

class Pulgas inherits Plaga{
  
}  

class Garrapatas inherits Plaga{
  
}  

class Mosquitos inherits Plaga{
  
}  

//barrio
class Barrio{
  var elementos = #{}

  method esBarrioCopado() = elementos.filter({e => e.esBueno()}).size() > elementos.filter({e => e.!esBueno()}).size()
}