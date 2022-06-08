void main(){
   final area=Area.Dhaka;
   if(area==Area.Dhaka){
     print(area);
   }
   else{
     print("Not Match");
   }
}
enum Area{
  Noakhali,
  Dhaka,
  Gazipur
}