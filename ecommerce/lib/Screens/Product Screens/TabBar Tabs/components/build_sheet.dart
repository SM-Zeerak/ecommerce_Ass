import 'package:ecommerce/components/addtocart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class BuildSheet extends StatefulWidget {
  const BuildSheet({Key? key}) : super(key: key);

  @override
  State<BuildSheet> createState() => _BuildSheetState();
}

class _BuildSheetState extends State<BuildSheet> {

  Future showSheet() => showSlidingBottomSheet(context,
      builder: (context) => SlidingSheetDialog(
            snapSpec: SnapSpec(snappings: [0.4, 0.7]),
            builder: buildsheet,
          ));

  @override
  Widget build(BuildContext context) {
    return  FlatButton(
      onPressed: () => showSheet(),
      child: Text("data")
    );

  }
}


Widget buildsheet(context, state) => Material(
        child: Column(
          children: [
            FlatButton(
                onPressed: ()  => {},
                child: Row(
                  children: [
                    Icon(Icons.image),
                    SizedBox(
                      width: 10,
                    ),
                    Text('From Gallery')
                  ],
                )),
            Divider(
              color: Color.fromARGB(255, 43, 41, 41),
              height: 10,
              thickness: 1,
              indent: 25,
              endIndent: 25,
            ),
            FlatButton(
                onPressed: () => {},
                child: Row(
                  children: [
                    Icon(Icons.camera),
                    SizedBox(
                      width: 10,
                    ),
                    Text('From Camera')
                  ],
                ))
          ],
        ),
      );