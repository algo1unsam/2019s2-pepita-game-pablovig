import wollok.game.*

object manzana {
	method image() = "manzana.png"
	method energia() = 80
	method habla(pepita){}
	method remover(){
		game.removeVisual(self)
	}
	method position() = game.at(5,1)
}

object alpiste {
	method image() = "alpiste.png"
	method remover(){game.removeVisual(self)}
	method habla(pepita){}
	method energia() = 5
	method position() = game.at(5,5)
}
