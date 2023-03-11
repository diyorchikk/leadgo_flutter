import 'package:flutter/material.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_text_field.dart';
import '../resources/styles.dart';

class WEdit extends StatelessWidget {
  const WEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Edit User",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.cancel_presentation_outlined),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 40,
          ),
          height: 2,
          color: Colors.black38,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: Styles.getTitleStyle().copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: WTextField(
                    name: "Name",
                    controller: TextEditingController(),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "E-Mail Address",
                  style: Styles.getTitleStyle().copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: WTextField(
                    name: "E-Mail Address",
                    controller: TextEditingController(),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40,
            bottom: 40,
          ),
          height: 2,
          color: Colors.black38,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 90,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close"),
              ),),
            const SizedBox(width: 20),
            SizedBox(
              width: 90,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Update"),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
