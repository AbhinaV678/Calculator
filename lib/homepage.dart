import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  double a=0,b=0,sum=0,diff=0,prod=0,div=0,ans=0;

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");
  void add(){
    setState(() {
      a= double.parse(t1.text);
      b= double.parse(t2.text);
      sum=a+b;
    });
    ans=double.parse((sum).toStringAsFixed(3));
  }

  void subtract(){
    setState(() {
      a= double.parse(t1.text);
      b= double.parse(t2.text);
      diff=a-b;
    });
    ans=double.parse((diff).toStringAsFixed(3));
  }

  void multiply(){
    setState(() {
      a= double.parse(t1.text);
      b= double.parse(t2.text);
      prod=a*b;
    });
    ans=double.parse((prod).toStringAsFixed(3));
  }

  void divide(){
    setState(() {
      a= double.parse(t1.text);
      b= double.parse(t2.text);
      div=a/b;
    });
    ans=double.parse((div).toStringAsFixed(3));
  }

  void clear(){
    setState(() {
      t1.text="";
      t2.text="";
      ans=0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
     appBar: AppBar(
    title: const Text("Calculator"),
    ),
    body: Container(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

           TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Enter the first Number :"
            ),
            controller: t1,
          ),
           TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Enter the second Number :"
            ),
             controller: t2,
          ),
          const Padding(
              padding: EdgeInsets.only(top: 20.0)
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.redAccent,
                onPressed: add,
                child: const Text("+",style: TextStyle(
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),),
              ),
              const Padding(
                  padding: EdgeInsets.all(10.0)
              ),
              MaterialButton(
                color: Colors.redAccent,
                onPressed: subtract,
                child: const Text("-",style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                ),
              )
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.only(top: 10.0)
          ),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          color: Colors.redAccent,
          onPressed: multiply,
          child: const Text("X",style: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)
        ),
        ),
        const Padding(
            padding: EdgeInsets.all(10.0)
        ),
        MaterialButton(
          color: Colors.redAccent,
          onPressed: divide,
          child: const Text("/",style: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        )
        )
      ],
      ),
          const Padding(
              padding: EdgeInsets.only(top: 20.0),
          ),
           Text("OUTPUT : $ans",style: const TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.redAccent,
                  onPressed: clear,
                child: const Text("Clear",style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),

              )
              )
            ],
          )
      ],

    ),
    ),
    );
  }
}