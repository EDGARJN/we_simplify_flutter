import 'package:flutter/material.dart';

asetFormField(labelText, value,textInputType) {
  return TextFormField(
    validator: (value) => value!.isEmpty ? "Required Field" : null,
    controller: value,
    keyboardType:textInputType,
    decoration:  InputDecoration(
      border: const OutlineInputBorder(),
      labelText: labelText,
    ),
  );
}

asetPasswordFormField(labelText, value) {
  return TextFormField(
    validator: (value) => value!.isEmpty ? "Required Field" : null,
    controller: value,
    decoration:  InputDecoration(
      border: const OutlineInputBorder(),
      labelText: labelText,
    ),
    obscureText: true,
  );
}

asetDropField(onchanged) {
  return DropdownButtonFormField(
    items:const [
      DropdownMenuItem(value: '1',child: Text("NMB"),),
      DropdownMenuItem(value: '2',child: Text("DTB"),),
      DropdownMenuItem(value: '3',child: Text("AKIBA BANK"),),
    ], 
    hint:const Text('Choose Bank'),
     decoration:const InputDecoration(
      border:  OutlineInputBorder(),
    ),
    onChanged: onchanged,
    
    );
}
