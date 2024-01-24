

import 'package:fbpost/imageuploadpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
          
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  children: [
                  InkWell(
                    onTap:() {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>imageupload(),));
                    },
                    child: CircleAvatar(
                      radius:23,
                      child:Icon(Icons.person),
                    ),
                  ) ,
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:15),
                     child: Text("Tahsin Sakib",style:TextStyle(fontSize:17,fontWeight:FontWeight.w500),),
                   )
                  ]
                               ),
               ),
                
                Divider(
                   
                  ),
            
          
               TextField(
                maxLines:10,
                decoration:InputDecoration(
                  hintText:"what s your maind ?",hintStyle:TextStyle(fontSize:19,fontWeight:FontWeight.w400,),
                ),
              ),
          
                 card(icontitle:"Photo/Video", selectephoto:Icons.photo_library,iconcolor:Colors.green),
                Divider(
                   
                  ),
                  card(icontitle:"Photo/Video", selectephoto:Icons.person,iconcolor:Colors.blue),
                Divider(
                   
                  ),
                        card(icontitle:"Photo/Video", selectephoto:Icons.location_on,iconcolor:Colors.red),
                Divider(
                   
                  ),
          
                           card(icontitle:"Photo/Video", selectephoto:Icons.sentiment_satisfied,iconcolor:Colors.amber),
                Divider(
                   
                  ),
          
                                card(icontitle:"Photo/Video", selectephoto:Icons.video_call,iconcolor:const Color.fromARGB(255, 250, 52, 38)),
                Divider(
                   
                  ),
                  
                  
              
                  
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final IconData selectephoto;
  final String icontitle;
  final Color iconcolor;
  const card({
    super.key,  required this.icontitle, required this.selectephoto, required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {
          
        }, icon:Icon(selectephoto,color:iconcolor,size:25,)),
    
         Text(icontitle,style:TextStyle(fontSize:15),),
    
       
      ],
    );
  }
}