import ciudades.*
import wollok.game.*

object pepita {
	var property energia = 130
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image() {
		return if (energia>100)"pepita-gorda-raw.png"
		else "pepita.png"
		} 

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}
	
	method tieneEnergia(){return (energia>0)}
	method tieneHambre(){game.say(self,"Dame de comer primero!")
		
	}
}
