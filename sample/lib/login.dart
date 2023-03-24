
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
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -7,
                          left: 160,
                          child: Container(
                            height: 75,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/logo.png'),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/kpr.jpg'),
                    )),
                    height: 250.0,
                    width: 400.0,


                  ), 
                
               ],
              ),
                      ),
                      
                  const SizedBox(
                    height: 10,
                  ),
                 Container(
                  child:Text(
                    "Let's know you",
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
                    'better',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 32, 8, 78),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
      BoxShadow(
        color: Color(0xffDDDDDD),
        blurRadius: 3.0,
        spreadRadius:   0,
        offset: Offset(0.0, 0.0),
      )
    ],

                  ),
                  child: Column(
                    children: [

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
                               contentPadding: const EdgeInsets.all(20),

                              filled: true, fillColor: Color.fromARGB(245, 245, 245, 245),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                         
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                    
                                    new Radius.circular(10.0))),
                                labelStyle: TextStyle(color: Color.fromARGB(245, 245, 245, 245))),
                                
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 6, 6, 6),
                              fontSize: 14,
                            ),
                            controller: host,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Empty value";
                              }
                            },


                          ),
                        ],
                    ),
                    const SizedBox(
          height: 20,
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
                              contentPadding: const EdgeInsets.all(20),
                                filled: true, fillColor: Color.fromARGB(245, 245, 245, 245),
                                
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                                border: OutlineInputBorder(
                                  
                                    borderRadius: BorderRadius.all(
                                        new Radius.circular(10))),
                                labelStyle: TextStyle(color: Color.fromARGB(245, 245, 245, 245))),
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
                    
                        
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 Row(
               
              mainAxisAlignment: MainAxisAlignment.center,
              

              children: [SizedBox(width: 150,),ElevatedButton(onPressed: (){
                color:Color.fromARGB(171, 2, 3, 55);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>onboardingp3()));
              }, child:Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 14),child:  Row
              (children:[ Text("Submit ",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               ]),)),
              
              ],

            )
                    ]
                  )
                ),
                  
          
                

                
                 
            


const SizedBox(
                  height: 30,
                ),
              
              
              ],

            )
             
              ),
                
            
    );
  }
  
  onboardingp3() {}
   
}