import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool glaza1=true;
  void open_visiblity(){
    if(glaza1==true){
glaza1=false;
    }else if(glaza1==false){
      glaza1=true;
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(34.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Регистрация",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w400)),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, size: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'имя',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
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
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password, size: 30),
                    suffixIcon: IconButton(
                        onPressed: open_visiblity, icon: const Icon(Icons.visibility)),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'придумайте код',
                    labelStyle: const TextStyle(fontSize: 16),
                    hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                    
                  ),
                  obscureText: glaza1,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/main_screen");
                      },
                      child:
                          const Text("Готово", style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text("Если у вас есть аккаунт!"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: const Text("Войти", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
