import 'package:flutter/material.dart';
import 'package:udemytut/disasterclass.dart';
import 'package:udemytut/pages/earthquake.dart';
import 'package:udemytut/pages/landslide.dart';
import 'package:udemytut/pages/volcanoes.dart';

import 'bushfires.dart';
import 'flood.dart';
import 'industrialfires.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SupplementaryInfo'),
        backgroundColor: Colors.orangeAccent,
        leading: const Icon(
          Icons.event_note,
          size: 34,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          separatorBuilder: (context,index)=>const SizedBox(height: 14,),
          itemCount: disasters.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                title: Text(disasters[index].title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                leading: Image.asset(disasters[index].images[0],width: 50,),
                onTap: () {
                  if (disasters[index].title == 'Floods') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Flood()),
                    );
                  }
                  if(disasters[index].title == 'Volcanoes'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Volcanoes()),);
                  }
                  if(disasters[index].title == 'Bush Fires'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BushFire()),);
                  }
                  if(disasters[index].title == 'Earthquakes'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> EarthQuake()),);
                  }
                  if(disasters[index].title == 'Land Slides'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LandSlide()),);
                  }
                  if(disasters[index].title == 'Industrial Fires'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> IndustrialFires()),);
                  }
                },
              ),
            );
          },
        ),
      ),
    );

  }
}
