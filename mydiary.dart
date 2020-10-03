import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:FirstRoute(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}
class FirstRoute extends StatelessWidget{
@override

Widget build(BuildContext context) {

 return Scaffold (
   
      appBar: AppBar(
        title: Text('My Diary'),
      ),
      
      body: Column(
children: <Widget>[


  
  Text("My Diary offers you"),
  Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
    


    children: <Widget>[

      
     MyCard(
            
            title: Text(
              "My Assisstant",
              
            ),
           
            icon:
                Icon(Icons.person,color: Colors.red)),

        
     MyCard(
          
            title: Text(
              "My Diary",
              
            ),
            
            icon: Icon(Icons.book,  color: Colors.blue)),

        
        MyCard(
         
          
            title: Text(
              "Event Description",
              
            ),
            
            icon: Icon(Icons.event, color: Colors.amber)
            
            ),

        
        MyCard(
         
            title: Text(
              
              "Event Remainder",
              
            ),
            
            icon: Icon(Icons.alarm, color: Colors.green)),
        
        MyCard(
          
            title: Text(
              "Notes",
             
            ),
            
            icon: Icon(Icons.bookmark, color: Colors.purple)),
      ],

    ),


                   RaisedButton(
          child: Text('Login/Register'),
          onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );

          },
        ),

      

]
      ),
      );





 
 
}
}


class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login/Register"),
      ),
      body: Column(
        children:<Widget>[

          TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your Username'
  ),
),


           TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter the Password'
  ),
),

            RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);

          },
          child: Text('Go back!'),
        ),



         
          RaisedButton(
         child: Text('Login'),
          onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthRoute()),
            );

          },
        ),



        RaisedButton(
         child: Text('New user??Register here'),
          onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdRoute()),
            );

          },
        ),


        ] 
      ),
    );
  }
}


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children:<Widget>[



            TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter your Username'
  ),
),


           TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter the Email-Id'
  ),
),




          TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter the Password'
  ),
),


           TextFormField(
  decoration: InputDecoration(
    labelText: 'Confirm the Password'
  ),
),

            RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);

          },
          child: Text('Go back!'),
        ),

          RaisedButton(
          child: Text('Register'),
          onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthRoute()),
            );

          },
        ),

        ] 
      ),
    );
  }
}


class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children:<Widget>[

         IconButton(
            icon: Icon(Icons.person),
            tooltip: 'My Assisstant',
            onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssisstantRoute()),
            );

          }, 
         ),



                  IconButton(
            icon: Icon(Icons.book),
            tooltip: 'My Diary',
            onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiaryRoute()),
            );

          }, 
         ),



                  IconButton(
            icon: Icon(Icons.event),
            tooltip: 'Event Description',
            onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventDRoute()),
            );

          }, 
         ),




                  IconButton(
            icon: Icon(Icons.alarm),
            tooltip: 'Event Remainder',
            onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventRRoute()),
            );

          }, 
         ),


        


         IconButton(
            icon: Icon(Icons.bookmark),
            tooltip: 'Notes',
            onPressed: () {
            

               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotesRoute()),
            );

          }, 
         ),
          
        ] 
      ),
    );
  }
}
 


class AssisstantRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children:<Widget>[

       
          
        ] 
      ),
    );
  }
}





class DiaryRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children:<Widget>[

         
          
        ] 
      ),
    );
  }
}






class EventDRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Description"),
      ),
      body: Column(
        children:<Widget>[


          
        ] 
      ),
    );
  }
}





class EventRRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children:<Widget>[

         
          
        ] 
      ),
    );
  }
}


class NotesRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children:<Widget>[

         
          
        ] 
      ),
    );
  }
}
