import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  Future<void> showAlertDialog() async{
    return showDialog(context:context,
    builder: (BuildContext context){
      return AlertDialog(
        
        backgroundColor: Colors.grey[800],
        title:Text("Simple Alert Dialog",style:TextStyle(color:Colors.white),),
        content: SingleChildScrollView(
          child:ListBody(
            children: [
              Text("Welcome to Karishma's Classes", style: TextStyle(color:Colors.white),)
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
             Navigator.of(context).pop();
          },child:Text("Ok",style: TextStyle(
            color: Colors.green,fontWeight: FontWeight.bold
          ),))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[800],
      appBar:AppBar(
        backgroundColor: Colors.green,
        title:Text("Alert Dialogs" , style: TextStyle(color:Colors.white),),
      ),
      body:Center(
        child:Column(
          children: [
            
            SizedBox(height: 200,),
            ElevatedButton(onPressed: (){
              showAlertDialog();
            },
             style:ElevatedButton.styleFrom(backgroundColor: Colors.green),child:Text("Display Simple Alert Dialog", style: TextStyle(color:Colors.white),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder:( BuildContext context){
                return DisplayAdvancedCustomAlertDialog();
              });
            },
            style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
             child:Text("Display Custom Alert Dialog Box", style: TextStyle(color:Colors.white),))
          ],
        )
      )
    );
  }
}
class DisplayAdvancedCustomAlertDialog extends StatelessWidget {
  const DisplayAdvancedCustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),

     child:Container(
      constraints: BoxConstraints(maxHeight: 300),
      child:Stack(
       clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
           

            height: 200,
            child:Padding(padding:EdgeInsets.fromLTRB(10, 70, 30, 30),
            child:Column(
              children: [
                Text("Welcome to Karishma's Classes", style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                 style:ElevatedButton.styleFrom(backgroundColor: Color(0xff2f8d)),

                 child:Text("Ok",style: TextStyle(
                  color:Colors.white

                ),))
              ],
            )),
      
          ),
           
          Positioned(top:-60,child: CircleAvatar(
            
            backgroundColor: Color(0xff2f8d46),
            radius: 50,
            child:ClipOval(
              
            child:Image.network("https://yt3.googleusercontent.com/rawg2iLEPMv0EyFb_CAUyzZAy3cRnbULeysh5RSdyrfZVGJj0_4glq2Bd8agycjkY3Pcd6__Tw=s160-c-k-c0x00ffffff-no-rj", height: 90,width: 90,
            fit: BoxFit.cover,),
          ))
          )
        ],
      )
     )
      
    );
  }
}
