import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (value) => HomePageProvider(),
    child:  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Provider example',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<HomePageProvider>(
          builder: (context, logProvider, value) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!logProvider.isLogIn)
                  ElevatedButton(
                    onPressed: () {
                      logProvider.login();
                    },
                    child: Text('Login'),
                  ),
                if (logProvider.isLogIn)
                  ElevatedButton(
                    onPressed: () {
                      logProvider.logout();
                    },
                    child: Text('Logout'),
                  ),
              ],
            );
          },
        ),
      ),
    ),
    );
  }
}
