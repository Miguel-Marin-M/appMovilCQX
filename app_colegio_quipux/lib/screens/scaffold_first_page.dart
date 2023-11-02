import 'package:app_colegio_quipux/screens/dropdown_item.dart';
import 'package:app_colegio_quipux/screens/table.dart';
import 'package:flutter/material.dart';


class ScaffoldAppBar extends StatelessWidget {
  const ScaffoldAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerScaffold(),
      appBar: appBarScaffold(),
      body: bodyScaffold(),
    );
  }

  Widget drawerScaffold(){
    return Drawer(
      child: Container(
        color: const Color(0xFF6A737C),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF6A737C),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Estudiantes',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFF6A737C),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Grupos',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFFC8CCD0),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Materias',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF555A5E), fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFF6A737C),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Evaluaciones',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFF6A737C),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Informes',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBarScaffold(){
    return AppBar(
      backgroundColor: Colors.white,
      leading: Builder(builder: ((context) {
        return IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          icon: const Icon(Icons.sort)
        );
      })
      ),
      centerTitle: true,
      title: Column(
        children: [
          Image.network('https://minciencias.gov.co/sites/default/files/quipux_logo.jpg', ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.account_circle, size: 30,), 
        )
      ],
    );
  }

  Widget bodyScaffold(){
    return Container(
        color: const Color(0xFFF4F4F4),
        child: Column(
          children: [
            const Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Administración de materias', style: TextStyle(fontSize: 20, color: Color(0xFF555555), fontWeight: FontWeight.bold),),
                ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFF009CDE),
              
                )
              ),
              alignment: Alignment.center,
              width: 200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.add_circle_outline, color: Color(0xFF009CDE),),
                  Text('Nuevo registro', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xFF009CDE)),)
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(3, 3),
                    blurRadius: 10,
                )],
              ),
              child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Grado', style: TextStyle(fontSize: 15, color: Color(0xFF545454)),),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const DropdownItem()
                          ),
                          const Text('Grupo', style: TextStyle(fontSize: 15, color: Color(0xFF545454)),),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const DropdownItem()
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Materia', style: TextStyle(fontSize: 15, color: Color(0xFF545454)),),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const DropdownItem()
                        ),
                        const Text('Profesor', style: TextStyle(fontSize: 15, color: Color(0xFF545454)),),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const DropdownItem()
                        )
                      ],
                    )
                  ]
                ),
            ), 
            
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(3, 3),
                    blurRadius: 10,
                )],
              ),
              child: Column(
                children: [

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.topLeft,
                    child: const Text('Resultados', style: TextStyle(fontSize: 20, color: Color(0xFF555555), fontWeight: FontWeight.bold,),)
                  ),
                  const MainTable(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('<', style: TextStyle(fontSize: 18),),
                        Text('1/3', style: TextStyle(fontSize: 18),),
                        Text('>', style: TextStyle(fontSize: 18),)
                      ],
                    ),
                  )
                ]
              ),
            ),
          ],
        ),
      );
  }
}


