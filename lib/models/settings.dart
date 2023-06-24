import 'package:Mini_Bill/Invoices/InvoicesList.dart';
import 'package:Mini_Bill/LoginPage.dart';
import 'package:Mini_Bill/Utils/extensions.dart';
import 'package:Mini_Bill/Widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';
import '../login/login_view.dart';

class ApiSettings extends StatefulWidget {

  @override
  State<ApiSettings> createState() => _ApiSettingsState();
}

class _ApiSettingsState extends State<ApiSettings> {
  TextEditingController apiController = TextEditingController();
  // TextEditingController secretController = TextEditingController();
  @override
  void dispose() {
    apiController.dispose();
    super.dispose();
  }
 static const var apiUrl = apiUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SizedBox(height: 180),
            Center(
              child: const Text(
                "Enter Api Key",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 42),
            CustomTextField(
              controller: apiController,
              hintText: 'Api Key',
            ) ,
            const SizedBox(height: 20),


            // CustomTextField(
            //   controller: secretController,
            //   hintText: 'Password',
            //   obscureText: true,
            // ),
            const SizedBox(height: 30),
            Column(
              children: [
                CustomButton(
                    onPressed: ()  {
                      String apiUrl = apiController.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
                    },
                    width: context.width * 0.6,
                    height: 45,
                    child: const Text("Update")),
                const SizedBox(height: 10),

              ],
            ),
          ],
        ),
      )
    );
  }
}

