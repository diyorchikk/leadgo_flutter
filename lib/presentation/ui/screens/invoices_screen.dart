import 'package:flutter/material.dart';
import '../resources/box_decoration.dart';
import '../resources/styles.dart';
import '../widgets/info_card.dart';

class InvoicesScreen extends StatefulWidget {
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  State<InvoicesScreen> createState() => _InvoicesScreenState();
}

class _InvoicesScreenState extends State<InvoicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 65,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manage Invoices",
                    style: Styles.getTitleStyle().copyWith(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home_outlined),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "/ Invoices ",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...List.generate(
                  8,
                  (index) => _infoCard(),
                ),
              ]),
            ),
            const CardInfo(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Copyright © LeadGo SaaS 2023",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _infoCard() => Container(
        margin: const EdgeInsets.only(
          bottom: 20,
          top: 20,
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.all(30),
        decoration: BDecoration.getCardDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                "Total Invoice",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 20),
              const CircleAvatar(
                backgroundColor: Colors.blueAccent,
                // backgroundImage: AssetImage(AppIcons.menuIcon),
              ),
            ]),
            const SizedBox(height: 15),
            Text(
              "\$54,031.50",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
}
