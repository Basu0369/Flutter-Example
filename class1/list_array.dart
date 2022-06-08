void main(){

List MYLIST=['A','B','C','D','D'];
print(MYLIST);
print(MYLIST.length);
print(MYLIST[3]); 

MYLIST.add("E");
print(MYLIST);

MYLIST.addAll(['F','GFD','G','K']);
print(MYLIST);

MYLIST.insert(0, "BB");
print(MYLIST);

MYLIST[2]="CC";
print(MYLIST);

MYLIST.replaceRange(0, 2, ['1','2']);
print(MYLIST);
}