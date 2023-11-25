import 'package:api_projeto_node/services/api.dart';
import 'package:flutter/material.dart';

class CreateData extends StatefulWidget {
  const CreateData({Key? key}) : super(key: key);

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Nome Aqui",
              ),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                hintText: "Preço Aqui",
              ),
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                hintText: "Desc Aqui",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {

              var data = {
                "pname": nameController.text,
                "pprice": priceController.text,
                "pdesc": descController.text,
                "pname": nameController.text,
              };

              Api.addproduct(data);

            }, child: const Text("Create Data"))
          ],
        ),
      ),
    );
  }
}
