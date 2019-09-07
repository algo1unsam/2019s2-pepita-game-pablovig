import wollok.game.*
import comidas.*
import pepita.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)
	method remover(){}
	method habla(pepita){game.say(pepita,"Ya estoy en Villa Gesell!")}
	method nombre() = "Villa Gesell"
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	method habla(pepita){game.say(pepita,"Ya estoy en Buenos Aires!")}
	method remover(){}
	method nombre() = "Buenos Aires"
}
