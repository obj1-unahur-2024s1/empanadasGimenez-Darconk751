import empleados.*

object gimenez {
	var fondo = 3000000
	method pagarSueldoAEmpleado(empleado){
		fondo = 0.max(fondo - empleado.sueldo())
		empleado.cobrarSueldo()
	}
}

