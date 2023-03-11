import 'package:flutter/material.dart';
import '../resources/styles.dart';

class WDelete extends StatefulWidget {
  const WDelete({Key? key}) : super(key: key);

  @override
  State<WDelete> createState() => _WDeleteState();
}

class _WDeleteState extends State<WDelete> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.circle_notifications_outlined,
                size: 150,
                color: Color(0xFF50BB16),
              ),
            ),
            const SizedBox(height: 120),
            Text(
              "Are you sure?",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "This action can not be undone. Do you want to",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Text(
              "continue?",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("No"),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 30,
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Yes"),
                  ),
                ),],
            ),
          ],
        ),
      ),
    );
  }
}
