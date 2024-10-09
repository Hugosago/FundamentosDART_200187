abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
    void volar() => print('Estoy volando!');
    void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima} kilometro');
    void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel de mar.');

    void descender(double velocidadMaxima) => print('Este animal puede descender hasta una velocidad de ${velocidadMaxima} metros');
}

mixin Caminante {
    void caminar() => print('Estoy caminando');

    void correr(double velocidadMaxima) => print('Este animal puede correr hasta una velocidad de ${velocidadMaxima} kilometros');

    void trotar(bool estaTrotando) {
        if(estaTrotando) print('Este animal está trotando');
        else print('Este animal no está trotando');
    }

    void saltar(bool estaSaltando) {
        if(estaSaltando) print('Este animal está saltando');
        else print('Este animal no está saltando');
    }
}

mixin Nadador {
    void nadar() => print('Estoy nadando');

    void sumergir(double profundidadMaxima) => print('Este animal puede sumergirse hasta una profundidad de ${profundidadMaxima} metro');

    void respirar(bool estaRespirando) {
        if(estaRespirando) print('Este animal está respirando');
        else print('Este animal no está respirando');
    }
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class PezVolador extends Ave with Volador, Nadador {}

void main() {
    final flipper = Delfin();
    print("Instanciando la clase de Delfin, y accediendo a sus funciones.");
    flipper.nadar();

    print("--------------------------------------------------------------");
    print("Instanciando la clase de murciélago, y accediendo a sus funciones.");
    final chupacabras = Murcielago();
    chupacabras.caminar();
    chupacabras.volar();

    print("--------------------------------------------------------------");
    print("Instanciando la clase de Pato, y accediendo a sus funciones.");
    final donald = Pato();
    donald.caminar();
    donald.volar();
    donald.nadar();
    
     print("--------------------------------------------------------------");
    print("Instanciando la clase de Paloma_Coronada_Occidental, y accediendo a sus funciones.");
    final Paloma_Coronada_Occidental = Paloma();
    Paloma_Coronada_Occidental.caminar();
    Paloma_Coronada_Occidental.trotar(true);
    Paloma_Coronada_Occidental.saltar(true);
    
    print("--------------------------------------------------------------");
    print("Instanciando la clase de Pato_maizero, y accediendo a sus funciones.");
    final Pato_maizero = Pato();
    Pato_maizero.caminar();
    Pato_maizero.correr(10);
    Pato_maizero.trotar(false);
    Pato_maizero.saltar(true);
    Pato_maizero.volar();
    Pato_maizero.planear(1);
    Pato_maizero.ascender(100 );
    Pato_maizero.descender(100.3);
    Pato_maizero.nadar();
    Pato_maizero.sumergir(1);
    Pato_maizero.respirar(true);
    
    
}