void main(){
  String name="Basu7dev9Das";

  for (int i = 0; i < name.length; i++) {
    print(name[i]);
  }

  //2nd
  print(name.split(""));

  //3rd
  print(name.split(new RegExp(r"[-9]")));

}