
import 'package:flutter/material.dart';
import 'package:sample/main.dart';


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
  var host;
  
  

  get children => null;


 
  @override
  Widget build(BuildContext context) {
    Column child;
    return Scaffold(
            body:  SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/kpr.jpg'),
                      
                    )),
                    height: 200.0,
                    width: 400.0,


                  ), 
                
               ],
              ),
                      ),
                      Container(
                      height:120,
                      width: 120,
                    
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                        image: AssetImage('images/logo.png'),
                        
                      )),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                 Container(
                  child:Text(
                    'LETS KNOW YOU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 32, 8, 78),
                    ),
                  ),
                ),
                const SizedBox(
                    height: 11,
                  ),
                  Container(
                  child:Text(
                    'BETTER',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 32, 8, 78),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                         
                          alignment: Alignment.topLeft,
                         child:Text(
                          'Name',
                          style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 158, 154, 164),
                          
                      ),
                    ),
                        
                         ),
                         
                         
                    ),
                    child = Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        new Radius.circular(10.0))),
                                labelStyle: TextStyle(color: Colors.white)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            controller: host,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Empty value";
                              }
                            },
                          ),
                  
         const SizedBox(
          height: 30,
         ),
         
             Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                         
                         alignment: Alignment.topLeft,

                         child:Text(
                          'Year Of Study',
                          style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 158, 154, 164),
                          
                      ),
                    ),
                        
                         ),
                         
                         
                    ),
                    child = Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        new Radius.circular(10.0))),
                                labelStyle: TextStyle(color: Colors.white)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            controller: host,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Empty value";
                              }
                            },
                          ), 
            


const SizedBox(
                  height: 30,
                ),
              
                Row(
               
              mainAxisAlignment: MainAxisAlignment.center,
              

              children: [SizedBox(width: 250,),ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>onboardingp3()));
              }, child:Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 14),child:  Row
              (children:[ Text("Submit  ",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               ]),)),
              
              ],

            )
             ],
              ),
                ]),
            ])
    ),);
  }
  
  onboardingp3() {}
   
}