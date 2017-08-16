/** First Wollok example */
object hospital {
	var doctores = []
	var pacientesatendidos = []
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
}
object pepe{
	method calidad()=5
}
object lucho{
	method calidad()=17
}

object sandra{
	method chisme()=10
}
object juan{
	method chisme()=53
}
