import 'package:flutter/material.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_text_field.dart';
import '../resources/styles.dart';

class WResetPassword extends StatelessWidget {
  const WResetPassword({Key? key}) : super(key: key);

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
                "Reset Password",
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
          ),),
        Container(
          margin: const EdgeInsets.only(
            bottom: 40,
          ),
          height: 1,
          color: Colors.black38,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 600,
              child: WTextField(
                name: "",
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Confirm Password",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 600,
              child: WTextField(
                name: "",
                controller: TextEditingController(),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40,
            bottom: 40,
          ),
          height: 1,
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
              ),
            ),
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
