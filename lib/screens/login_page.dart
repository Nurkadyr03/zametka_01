import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController(text: "admin@gmail.com");
  final passwordTextController = TextEditingController(text: "12345");
  String? errorText=null;
  
bool glaza=true;

  void _auth() {
    final login = loginController.text;
    final password = passwordTextController.text;

    if (login == "admin@gmail.com" && password == "12345") {
      
      
      Navigator.of(context).pushNamed(
        '/main_screen',
      );
    }else ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            content: const Text('Не верное логин или пароль',style:TextStyle(color:Colors.red)),
          
          ),
        );
    

    setState(() {});
  }
void open_close(){
if(glaza==true){
 
  glaza=false;
}else if(glaza==false){
  
  glaza=true;
};
setState(() {
  
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Логин",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email, size: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelStyle: TextStyle(fontSize: 16),
                  labelText: 'gmail.com',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  
                ),
                controller: loginController,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password, size: 30),
                 
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                   labelText: 'напишите  код',
                suffixIcon: IconButton(onPressed: open_close, icon:const Icon(Icons.visibility)),
                  labelStyle: TextStyle(fontSize: 16),
                  hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                ),
                obscureText:glaza,
                controller: passwordTextController,
              ),
              const SizedBox(height: 60),
              OutlinedButton(
                onPressed: () {
                  _auth();
                },
                child: const Text(
                  "готово",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              
                
              
              
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/sign_page");
                },
                child: const Text("регистрация"),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
