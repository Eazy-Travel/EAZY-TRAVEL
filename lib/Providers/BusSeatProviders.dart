import "package:flutter/material.dart";

class  SelectSeatProvider with ChangeNotifier{

int _NumberOfSeats=0;
int get count =>_NumberOfSeats;
final List<Container> _myList=[];
List<Container> get myList=>_myList;
void addSeat(int index){
  _NumberOfSeats++;
  notifyListeners();
}
void RemoveSeat(int index){
  _NumberOfSeats--;
  notifyListeners();
}

}