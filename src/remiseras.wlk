import clientes.*

object roxana{
    method precioViaje(cliente,kms){
        return cliente.valorKm()*kms
    }
}

object gabriela{

    method precioViaje(cliente,kms){
        return (cliente.valorKm()*kms)*1.2
    }
}

object mariela{

    method precioViaje(cliente,kms){
        return 50.max(cliente.valorKm()*kms)
    }
}

object juana{

    method precioViaje(cliente,kms) = if(kms<=8){100}else{200}
}

object lucia{
    var remiseraReemplazada

    method remiseraReemplazada(remisera){
        if(self == remisera){
            self.error("No se puede reemplazar a si misma")
        }
        remiseraReemplazada = remisera
    }

    method remiseraReemplazada() = remiseraReemplazada

    method precioViaje(cliente, kms) {
        return remiseraReemplazada.precioViaje(cliente,kms)
    }
}
