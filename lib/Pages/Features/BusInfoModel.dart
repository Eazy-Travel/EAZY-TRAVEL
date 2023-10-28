import "package:flutter/material.dart";

class BusInfoModel {
  final BusCompanyName;
  final DepartureTime;
  final StartJourney;
  final Destination;
  final Price;

  Const BusInfoModel({this.BusCompanyName,
  this.DepartureTime,
  this.StartJourney,
  this.Destination,
  this.Price,

});
  toJson(){
    return{
      "BusCompanyName":BusCompanyName,
      "SetOffTime":DepartureTime,
      "StartJourney":StartJourney,
      "Destination":Destination,
      "Price":Price
    };
  }

}