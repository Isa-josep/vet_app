import 'package:flutter/material.dart';

class VacunasScreen extends StatelessWidget {
  
  const VacunasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Vacunas')),
        
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: Icon(Icons.vaccines, color: Colors.green),
            title: Text('Vacuna Rabia'),
            subtitle: Text('Aplicada el 12/01/2023'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vaccines, color: Colors.orange),
            title: Text('Vacuna Parvovirus'),
            subtitle: Text('Aplicada el 05/03/2023'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vaccines, color: Colors.red),
            title: Text('Vacuna Moquillo'),
            subtitle: Text('Aplicada el 21/05/2023'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.vaccines, color: Colors.blue),
            title: Text('Vacuna Leptospirosis'),
            subtitle: Text('Aplicada el 15/07/2023'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          Divider(),
        ],
      ),
    );
  }
}
