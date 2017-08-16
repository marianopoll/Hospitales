/** First Wollok example */
object hospital {
	var doctores = []
	var pacientes = []
	var slogan = "haciendo todo para que vuelvas"
	method slogan() = slogan
	method slogan(nuevoslogan){
		slogan = nuevoslogan
	}
	method doctores() = doctores
	method doctores(nuevosdoctores){
		doctores = nuevosdoctores
	}
	method pacientes() = pacientes
	method pacientes(nuevospacientes){
		pacientes = nuevospacientes
	}
}
