import 'package:ex4_gridview/car_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('LADA')),
        body: Center(child: LayoutBuilder(builder: (context, constraints) {
          return GridView.builder(
              itemCount: carList.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Container(
                    
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black12,
                    ),
                    child: Column(
                      children: [
                        Expanded(child: Image.network(carList[index].getImg())),
                        
                      ],
                    ),
                  ),
                );
              });
        })));
  }
}
