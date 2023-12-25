import "package:flutter/material.dart";
import "package:lab05_123/barber1.dart";

class BarBer extends StatefulWidget {
  const BarBer({super.key});

  @override
  State<BarBer> createState() => _BarBerState();
}

class _BarBerState extends State<BarBer> {
  List<Barber1> barber1s = [];

  String groupbarber = "Please choose a hairstyle.";

  @override
  void initState() {
    super.initState();
    barber1s = Barber1.getBarBer();
    for (var bb in barber1s) {
      print(bb.thName + " " + bb.price.toString());
    }

    // for (var i = 0; i < barber1s.length; i++) {
    //   print(barber1s[i].thName + " " + barber1s[i].price.toString());
    // }
  }

  List<Widget> createBarbarRadioList() {
    List<Widget> myWidgets = [];

    for (var bb in barber1s) {
      myWidgets.add(
          // RadioListTile
          RadioListTile(
            // isThreeLine: true,
        
        title: Text(bb.thName),
        subtitle: Text(bb.enName),
        secondary: Column(
          children: [Text(bb.price.toStringAsFixed(2)),Icon(Icons.check)],
        ),
        value: bb.value,
        groupValue: groupbarber,
        
        onChanged: (value) {
          setState(() {
            groupbarber = value!;
          });
        },
      ));
    }

    return myWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HairStyle"),
      ),
      body: Column(
        children: [
          Text("กรุณา เลือกทรงผม"),
          Column(
            children: createBarbarRadioList(),
          ),
          Text(groupbarber),
        ],
      ),
    );
  }
}
