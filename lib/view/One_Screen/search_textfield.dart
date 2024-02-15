import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: const TextStyle(color: Colors.white , fontSize: 15),
        decoration: InputDecoration(
          
          fillColor: Colors.black12,
          filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(
          color: Colors.white,width: 1
        )),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(
          color: Colors.white,width: 1
        )),
        labelText: 'Find your coffee', labelStyle: const TextStyle(color: Color.fromARGB(179, 168, 164, 164)),
        prefixIcon: const Icon(Icons.search,color: Color.fromARGB(179, 168, 164, 164),)
        
        
        ),
      ),
    );
  }
}