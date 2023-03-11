import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_delete.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_edit.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_restet_password.dart';
import '../resources/box_decoration.dart';
import '../resources/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../screens/invoices_screen.dart';

class WUserCard extends StatelessWidget {
  final GestureTapCallback onTab;
  final int deals = 71;
  final int invoices = 76;
  final int estimations = 37;
  final Color employeColor;
  final bool addUser;
  final bool clients;
  final String name;
  final String email;

  const WUserCard({
    Key? key,
    required this.employeColor,
    required this.onTab,
    required this.name,
    required this.addUser,
    required this.clients,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: addUser == false
          ? BDecoration.getCardFonDecoration()
          : BDecoration.getBorderContainerDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          addUser == false
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: employeColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Employee",
                          style: Styles.getTitleStyle(),
                        ),
                      ),
                    ),
                    PopupMenuButton(
                      enableFeedback: false,
                      shadowColor: Colors.black38,
                      splashRadius: Material.defaultSplashRadius,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const InvoicesScreen(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.visibility,
                                ),
                              ),
                              // SvgPicture.asset(AppIcons.visibility,height: 20,width: 20,),
                              const SizedBox(width: 8),
                              Text(
                                "View",
                                style: Styles.getTitleStyle().copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (c) => const WEdit(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              IconButton(
                                focusNode: FocusNode(canRequestFocus: false),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        title: WEdit(),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                ),
                              ),
                              // SvgPicture.asset(AppIcons.edit,height: 20,width: 20,),
                              const SizedBox(width: 8),
                              Text(
                                "Edit",
                                style: Styles.getTitleStyle().copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (c) => const WDelete(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        title: WDelete(),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.delete),
                              ),
                              // SvgPicture.asset(AppIcons.delete,height: 20,width: 20,),
                              const SizedBox(width: 8),
                              Text(
                                "Delete",
                                style: Styles.getTitleStyle().copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (c) => const WResetPassword(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        title: WResetPassword(),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.key),
                              ),
                              // SvgPicture.asset(AppIcons.key,height: 20,width: 20,),
                              const SizedBox(width: 8),
                              Text(
                                "Reset Password",
                                style: Styles.getTitleStyle()
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                      child: const Icon(
                        Icons.more_vert_outlined,
                        size: 30,
                      ),
                    ),
                    // SvgPicture.asset(AppIcons.menuIcon),
                  ],
                )
              : const SizedBox(height: 20),
          const SizedBox(height: 20),
          addUser == false
              ? Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black54),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://res.cloudinary.com/demo/image/fetch/https://upload.wikimedia.org/wikipedia/commons/1/13/Benedict_Cumberbatch_2011.png",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                )
              : GestureDetector(
                  onTap: onTab,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6FD842),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: onTab,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
          const SizedBox(height: 20),
          Text(
            name,
            style: Styles.getTitleStyle().copyWith(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            email,
            style: Styles.getTitleStyle().copyWith(
              color: const Color(0xFF88879A),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          clients == false
              ? const SizedBox()
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "$deals",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Deals",
                          style: Styles.getTitleStyle().copyWith(
                            color: const Color(0xFF88879A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 1,
                          height: 15,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "$invoices",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Invoices",
                          style: Styles.getTitleStyle().copyWith(
                            color: const Color(0xFF88879A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 1,
                          height: 15,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "$estimations",
                          style: Styles.getTitleStyle().copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Estimations",
                          style: Styles.getTitleStyle().copyWith(
                            color: const Color(0xFF88879A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
        ],
      ),
    );
  }
}
