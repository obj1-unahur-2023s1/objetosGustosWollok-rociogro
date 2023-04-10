object rosa {
	
	method leGusta(unaCosa){
		return unaCosa.peso()<=2000
	}
	
}
object estefania {
	
	method leGusta(unaCosa){
		return unaCosa.color().esFuerte()
	}
	
}
object luisa {
	
	method leGusta(unaCosa){
		return unaCosa.material().esBrillante()
	}
	
}
object juan {
	
	method leGusta(unaCosa){
		return not unaCosa.color().esFuerte() or unaCosa.peso().between(1200,1800)
	}
	
}
object rojo {
	method esFuerte(){
		return true
	}
}
object verde {
	method esFuerte(){
		return true
	}
}
object celeste {
	method esFuerte(){
		return false
	}
}
object pardo {
	method esFuerte(){
		return false
	}
}
object naranja{
	method esFuerte(){
		return true
	}
}

object cobre{
	method esBrillante(){
		return true
	}
}
object vidrio{
	method esBrillante(){
		return true
	}
}
object lino{
	method esBrillante(){
		return false
	}
}
object madera{
	method esBrillante(){
		return false
	}
}
object cuero{
	method esBrillante(){
		return false
	}
}

object remera{
	
	method color()=rojo
	method material()=lino
	method peso()=800
}
object pelota{
	
	method color()=pardo
	method material()=cuero
	method peso()=1300
}
object biblioteca{
	
	method color()=verde
	method material()=madera
	method peso()=8000
}
object munieco{
	var property peso
	
	method color()=celeste
	method material()=vidrio
	/*method peso()=peso
	method peso(unPeso){
		peso=unPeso
	}*/
}
object placa{
	var property peso
	var property color
	method material()=cobre
}

object bolichito{
	var property vidriera
	var property mostrador
	
	method esBrillante(){
		return vidriera.material().esBrillante() and mostrador.material().esBrillante()
	}
	method esMonocromatico(){
		return vidriera.color()== mostrador.color()
	}
	method estaDesequilibrado(){
		return mostrador.peso()>vidriera.peso()
	}
	method tieneAlgoDeColor(color){
		return mostrador.color()==color or vidriera.color()==color
	}
	method puedeMejorar(){
		return self.esMonocromatico() or self.estaDesequilibrado()
	}
	method puedeOfrecerAlgoA(persona){
		return persona.leGusta(vidriera) or persona.leGusta(mostrador)
	}
}
object arito{
	
	method peso()=180
	method color()=celeste
	method material()=cobre
}
object banquito{
	var property color = naranja
	
	method peso()=1700
	method material()=madera
}
object cajita{
	var property objeto
	
	method color()=rojo
	method material()=cobre
	method peso()=400+objeto.peso()
}