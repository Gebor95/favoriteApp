import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
      backgroundColor: Colors.deepPurple[100],
      toolbarHeight: 70,
      toolbarTextStyle: const TextStyle(color: Colors.deepPurple),
        actions: const[Padding(
          padding: EdgeInsets.only(right:15.0),
          child: Text("...", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36.3),),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              width: 120,
              height: 120,
              decoration:  BoxDecoration(
                boxShadow: const[
                  BoxShadow(
                      color:  Color.fromARGB(210, 161, 141, 176),
                      offset:  Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 16.0,
                      spreadRadius: 2.0,
                    ), 
                    ],//BoxShadow],
                 borderRadius:  BorderRadius.circular(25),
                image: const DecorationImage(image: AssetImage("assets/images/avatarman2.jpeg"))
              ),
            ),
             const Padding(
              padding:  EdgeInsets.only(top:10.0, bottom: 10.1),
              child:  Text("Bob Oscar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            ),
            ElevatedButton(
              onPressed: () {
  Navigator.pop(context);
},
              child: const Text('Favorite Items'),
               ),
               const SizedBox(height: 62,),
               Container(
              width: double.infinity,
              height: 422,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top:48.0, left: 18.0, bottom: 18.0, right: 18.0),
                    child: ListTile(
                      leading:  Container(width:50, height:50, decoration: BoxDecoration(color:Colors.amber[100], borderRadius: BorderRadius.circular(10)),child: const Icon(Icons.chat_bubble, color: Colors.amber,)),
                      title: const Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child:  Text(
                          'Start a chat',
                          textScaleFactor: 1.3,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      
                      
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: ListTile(
                      leading:  Container(width:50, height:50, decoration: BoxDecoration(color:Colors.green[100], borderRadius: BorderRadius.circular(10)),child: const Icon(Icons.person, color: Colors.green,)),
                      title: const Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child:  Text(
                          'Expert replies',
                          textScaleFactor: 1.3,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      
                      
                  ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: ListTile(
                      leading:  Container(width:50, height:50, decoration: BoxDecoration(color:Colors.red[100], borderRadius: BorderRadius.circular(10)),child: const Icon(Icons.star_border_outlined, color: Colors.red,)),
                      title: const Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child:  Text(
                          'Review ratings',
                          textScaleFactor: 1.3,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      
                      
                  ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: ListTile(
                      leading:  Container(width:50, height:50, decoration: BoxDecoration(color:Colors.blue[100], borderRadius: BorderRadius.circular(10)),child: const Icon(Icons.quiz, color: Colors.blue,)),
                       title: const Padding(
                        padding:  EdgeInsets.only(left: 18.0),
                        child:  Text(
                          'Asked questions',
                          textScaleFactor: 1.3,
                        ),
                      ),
                      trailing:  const Icon(Icons.chevron_right),
                      
                      
                  ),
                   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}