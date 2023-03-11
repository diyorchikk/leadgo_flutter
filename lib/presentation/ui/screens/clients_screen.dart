import 'package:flutter/material.dart';
import '../resources/styles.dart';
import '../widgets/w_user_card.dart';

class ClientsScreen extends StatefulWidget {
  final String name = "Coleman";
  final String email = "coleman@example.com";

  const ClientsScreen({Key? key}) : super(key: key);

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    "User Cards",
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
                          "/ Users ",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "/ Clients Cards",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.blue,
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
            Container(
              color: const Color(0xFFF7F8F9),
              padding: const EdgeInsets.all(20),
              height: 800,
              width: double.infinity,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                children: [
                  WUserCard(
                    onTab: () {},
                    addUser: true,
                    clients: false,
                    name: "New User",
                    email: "Click here to add New User",
                    employeColor: const Color(0xFF6FD842),
                  ),
                  WUserCard(
                    onTab: () {},
                    clients: true,
                    addUser: false,
                    name: widget.name,
                    email: widget.email,
                    employeColor: const Color(0xFF6FD842),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
