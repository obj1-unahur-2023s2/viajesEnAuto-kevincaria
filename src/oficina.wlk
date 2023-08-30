import clientes.*
import remiseras.*

object ofina{
    var primerRemisera
    var segundoRemisera

    method primerRemisera() = primerRemisera

    method segundoRemisera() = segundoRemisera

    method asignarRemiseras(remisera1,remisera2){
        primerRemisera = remisera1
        segundoRemisera = remisera2
    }

    method cambiarPrimerRemiseraPor(remisera){
        primerRemisera = remisera
    }

    method cambiarSegundoRemiseraPor(remisera){
        segundoRemisera = remisera
    }

    method intercambiarRemiseras(){
        self.asignarRemiseras(segundoRemisera,primerRemisera)
    }

    method remiseraElegidaParaViaje(cliente, kms){
        if (segundoRemisera.precioViaje(cliente, kms) + 30 < primerRemisera.precioViaje(cliente,kms)){
            return segundoRemisera
        } else {
            return primerRemisera
        }
    }
}