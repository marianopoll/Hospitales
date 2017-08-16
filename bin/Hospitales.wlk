/** First Wollok example */
object hospital {
	var doctores = [pepe]
	var pacientesatendidos = [sandra]
	var slogan = "haciendo todo para que vuelvas"
	method slogan() = slogan
	method slogan(nuevoslogan){
		slogan = nuevoslogan
	}
	method doctores() = doctores
	method doctores(nuevosdoctores){
		doctores = nuevosdoctores
	}
	method pacientesatendidos() = pacientesatendidos
	method pacientesatendidos(nuevospacientesatendidos){
		pacientesatendidos = nuevospacientesatendidos
	}
	method calidad() = self.doctores().sum({doctor=>doctor.calidad()})
	method chismeDePacientes()=pacientesatendidos.sum({paciente=>paciente.chisme()})
	method fama()=self.chismeDePacientes() * self.calidad()
	method dasDesconfianza()= self.calidad()<100 || self.fama()<1000
method cura(unPaciente){
		self.doctores().min({doctor => doctor.calidad()}).cura(unPaciente)
		self.pacientesatendidos().add(unPaciente)
	}
}
object pepe{
	method calidad()=5
}
object lucho{
	var calidad=0
	method calidad()=calidad
	method calidad(nuevaCalidad){
		calidad = nuevaCalidad}
	method aumentaCalidad(puntosParaAumentar) {
		self.calidad(self.calidad() + puntosParaAumentar)
	}
	method cura(unPaciente){
		const vidaOriginal=unPaciente.vida()
			unPaciente.vida(100)
			self.aumentaCalidad(100-vidaOriginal)
	}	
}

object sandra{
	var vida
	method vida()=vida
	method vida(vidanueva){
		vida=vidanueva
	}
	method chisme()=10
}
object juan{
	method chisme()=53
}
