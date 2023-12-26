import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tesla_laborotory/Providers/loginProvider.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar() ,
      body: Consumer<LoginProvider>(
        builder: (context,val,child) {
          return Column(
            children: [
              TextFormField(controller:val. nc,),
              TextFormField(controller:val.mc ,),
              ElevatedButton(onPressed: (){ val.Add();
                }, child: Text("Save"))
            ],
          );
        }
      ),
    );
  }
}
