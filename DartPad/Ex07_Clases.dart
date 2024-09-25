void main() {
  
  //Clase con parametros posicionales
  final Hero wolverine = Hero('Logan', 'Regenaracion');
  //Clase con parametros no posicionales los puedo mandar en desorden
  final brawl = Team(type: "Veneno",name: "Chester");
  final counters = Team(name: "Asesinos");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("--------------------");
  print(brawl);
  print(brawl.name);
  print(brawl.type);
  print("--------------------");
  print(counters);
  print(counters.name);
  print(counters.type);
  //Invocando al metodo rescrito con override
  print(counters.toString());
    
  
}
class Hero {
  String name;
  String power;
  
  
   Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
}
  
class Team
{
  String name;
  String type;
    Team ({ required this.name, this.type ="No definido"});
  String toString()
  {
    return 'Grupo: $name, Tipo: $type';
   }
}
  
 