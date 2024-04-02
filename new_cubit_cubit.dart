import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'new_cubit_state.dart';

class NewCubitCubit extends Cubit<NewCubitState> {
  NewCubitCubit() : super(NewCubitInitial());
  
  TextEditingController dollarCtr = TextEditingController();
  TextEditingController rupeesCtr = TextEditingController();

  dollar() {
    String dollar = dollarCtr.text;
    if (dollar.isNotEmpty) {
      double dollar1 = double.parse(dollar);
      double convertedDoller = dollar1 * 80;
      rupeesCtr.text = convertedDoller.toString();
    }
  }

  rupees() {
    String rupees = rupeesCtr.text;
    if (rupees.isNotEmpty) {
      double rupees1 = double.parse(rupees);
      double convertedRupees = rupees1 / 80;
      dollarCtr.text = convertedRupees.toString();
    }
  }
}
