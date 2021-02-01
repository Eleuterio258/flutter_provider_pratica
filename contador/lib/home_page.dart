import 'package:contador/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer<ContadorController>(builder: (_, contadorController, __) {
            return IconButton(
                icon: Icon(Icons.receipt),
                onPressed: () {
                  contadorController.limpar();
                });
          })
        ],
        title: Text(''),
      ),
      body: Consumer<ContadorController>(
        builder: (_, contadorController, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  contadorController.numero.toString(),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: Consumer<ContadorController>(
        builder: (_, contadorController, __) {
          return Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 10,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  contadorController.increment();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  contadorController.decrement();
                },
                child: Icon(Icons.remove),
              ),
            ],
          );
        },
      ),
    );
  }
}
