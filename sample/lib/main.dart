import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    ) 
  );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const SizedBox(
            height: 120,
          ),
           Container(
            alignment: const Alignment(-0.4,8),
            height: 300,
            width: 450,
          decoration: const BoxDecoration(image:DecorationImage(image: AssetImage('images/success.jpg')))),
          const Text("Successful",style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 87, 74, 182)
          ),),
          const SizedBox(height: 10,),
         ElevatedButton(onPressed: (){  Navigator.push(context, MaterialPageRoute( builder: (BuildContext context)=>Connection_error() ));},
         style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith((states) {
                      return const Color.fromARGB(197, 26, 24, 153) ;
   } )),
          child: const Text("Go to HOME"))
      ]),
      
    );
    
    }
    
      Connection_error() {}
  }