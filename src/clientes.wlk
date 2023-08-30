object ludmila{
    method valorKm() = 18
}

object anaMaria{
    var economicamenteEstable = true

    method revertirEconomicamenteEstable(){
        economicamenteEstable = not economicamenteEstable
    }

    method economicamenteEstable() = economicamenteEstable

    method valorKm() = if(economicamenteEstable){30}else{25}
}

object teresa{
    var property valorKm = 22
}

object Melina{
    var clienteReemplazada 

    method clienteReemplazada(cliente){
        if(self == cliente){
            self.error("No se puede reemplazar a si misma")
        }
        clienteReemplazada = cliente
    }

    method clienteReemplazada() = clienteReemplazada

    method valorKm(){
        return clienteReemplazada.valorKm() - 3
    }

}