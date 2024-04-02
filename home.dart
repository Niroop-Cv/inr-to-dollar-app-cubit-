import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomeScreen/cubit/new_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rs to Dollor",
          style: TextStyle(
              fontSize: 25,
              color: Colors.brown,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: BlocProvider(
        create: (context) => NewCubitCubit(),
        child: BlocBuilder<NewCubitCubit, NewCubitState>(
          builder: (context, state) {
            final cubit = context.read<NewCubitCubit>();
            return Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    onChanged: (value) {
                      cubit.dollar();
                    },
                    controller: cubit.dollarCtr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Type Dollar",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    onChanged: (value) {
                      cubit.rupees();
                    },
                    controller: cubit.rupeesCtr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Type rupees",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
