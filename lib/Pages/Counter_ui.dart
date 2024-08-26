// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bloc_app1_counter/Pages/setting_Screen.dart';
import 'package:bloc_app1_counter/blocs/counter/bloc/counter_bloc.dart';
import 'package:bloc_app1_counter/shared/button_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterUi extends StatelessWidget {
  const CounterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(color: Colors.white),
          ),
        
          actions: [
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                }
                
                )
          ]),
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return Center(
                      child: Text(
                    "Counter : 0",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ));
                }
                if (state is CounterChangedState) {
                  return Center(
                      child: Text(
                    "Counter : ${state.value}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ));
                } else {
                  return Container();
                }
              },
            ),
            Positioned(
                //  top: 0,
                right: 0,
                bottom: 0,
                //left: 0,
                child: ButtonCounter())
          ],
        ),
      ),
    );
  }
}
