import 'dart:ffi';

void main(){
//int
int ab=20;
int abc=20;
print(ab+abc);

//number
double a=2.4;
double b=2.5;              
print("Result=${a*b}");

//boolean
String name="Basu";
String name2="Basu";
bool result=(name==name2);
print(result);

//List
List aff=['Basu','Dev','chandra','das'];
print(aff);
print(aff[1]);

//Map

Map map=new Map();
map['1st']='Basu';
map['2nd']='dev';
print(map);

Map<String,dynamic>maps={
  'Name1':'Basu',
  'Name2':'Dev'
};
print(maps);

//Set
Set setname={'Name1','Name2','Nam3','Name4'};
print(setname);
}


