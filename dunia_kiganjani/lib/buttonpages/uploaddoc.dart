import 'package:flutter/material.dart';
import 'package:dunia_kiganjani/widgets/app_largetext.dart';
import 'package:dunia_kiganjani/widgets/app_text.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadDocsPage extends StatefulWidget {
  const UploadDocsPage({super.key});

  @override
  State<UploadDocsPage> createState() => _UploadDocsPageState();
}

class _UploadDocsPageState extends State<UploadDocsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Aligns text away from the right image
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Verification Progress",
                        size: 16,
                        color: Color.fromRGBO(63, 62, 62, 1),
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10),
                      AppLargeText(
                        text:
                            "66% Verified", //badge outlined/gpp_good_outl,help,school,description/feed outlined,swap-horiz,upload-file,visiblity oit
                        size: 32,
                        color: Color.fromARGB(177, 18, 27, 156),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Stack(
                    alignment: Alignment
                        .bottomLeft, // Positions the checkmark on the bottom-left of this stack
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/pict-2.jpg"),
                            fit: BoxFit.cover,
                          ),
                          // Matches your rounding choice
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(
                                15), // Snaps flush into the main card's top-right corner
                            bottomLeft: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(2),
                          child: const Icon(
                            Icons.gpp_good_outlined,
                            color: Color.fromARGB(255, 26, 14, 165),
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 158, 159, 160),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(38, 59, 217, 0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.description_outlined,
                          color: Color.fromRGBO(8, 31, 160, 1),
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AppText(
                            text: "TIN Certificate",
                            size: 20,
                            color: Color.fromRGBO(63, 62, 62, 1),
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(55, 186, 31, 0.969),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      8), // Space between the circle and text
                              const AppText(
                                text: "Approved",
                                size: 14,
                                color: Color.fromRGBO(55, 186, 31, 0.969),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromRGBO(8, 31, 160, 1),
                            width: 1.2,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.visibility_outlined,
                              color: Color.fromRGBO(5, 23, 121, 0.675),
                              size: 22,
                            ),
                            SizedBox(width: 8),
                            AppText(
                              text: "View",
                              size: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(7, 24, 119, 0.662),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 91, 92, 97),
                            width: 1.2,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.swap_horiz_outlined,
                              color: Color.fromRGBO(68, 68, 71, 1),
                              size: 22,
                            ),
                            SizedBox(width: 8),
                            AppText(
                              text: "Replace",
                              size: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(76, 77, 79, 1),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 162, 163, 164),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 138, 35, 0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.badge_outlined,
                          color: Color.fromRGBO(176, 11, 11, 0.874),
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AppText(
                            text: "Business Licence",
                            size: 20,
                            color: Color.fromRGBO(63, 62, 62, 1),
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 238, 146, 34),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      8), // Space between the circle and text
                              const AppText(
                                text: "Pending Review",
                                size: 14,
                                color: Color.fromARGB(255, 238, 146, 34),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const AppText(
                            text: "Expires 31 Dec 2026",
                            size: 14,
                            color: Color.fromRGBO(105, 100, 100, 1),
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromRGBO(8, 31, 160, 1),
                            width: 1.2,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.visibility_outlined,
                              color: Color.fromRGBO(5, 23, 121, 0.675),
                              size: 22,
                            ),
                            SizedBox(width: 8),
                            AppText(
                              text: "View",
                              size: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(7, 24, 119, 0.662),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 91, 92, 97),
                            width: 1.2,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.swap_horiz_outlined,
                              color: Color.fromRGBO(68, 68, 71, 1),
                              size: 22,
                            ),
                            SizedBox(width: 8),
                            AppText(
                              text: "Replace",
                              size: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(76, 77, 79, 1),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 35),
            DottedBorder(
              color: const Color.fromARGB(202, 209, 13, 13),
              strokeWidth: 2,
              dashPattern: const [8, 4],
              borderType: BorderType.RRect,
              radius: const Radius.circular(15),
              child: Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(205, 208, 97, 97),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.school_outlined,
                            color: Color.fromRGBO(160, 13, 13, 0.871),
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AppText(
                              text: "Professional Certificate",
                              size: 20,
                              color: Color.fromRGBO(63, 62, 62, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 244, 30, 30),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Space between the circle and text
                                const AppText(
                                  text: "Missing",
                                  size: 14,
                                  color: Color.fromARGB(255, 216, 25, 25),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 202, 55, 55),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 169, 9, 9),
                          width: 1.2,
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.upload_outlined,
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(width: 8),
                          AppText(
                            text: "Upload Document",
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
Stack(
  clipBehavior: Clip.none,
  children: [
    // 1. The Main White Card Container
    Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 0.6,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Container(
            padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                const Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(227, 14, 33, 174),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      text: "Need help with your business registration?",
                      color: Color.fromRGBO(80, 78, 78, 1),
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 5),
                    
                    
                    Text(
                      "Contact Support",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromRGBO(15, 32, 184, 0.842),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: const Color.fromRGBO(15, 32, 184, 0.842),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),

   
    Positioned(
      bottom: 0,
      left: 0,
      right: 0, 
      child: Container(
        height: 50, 
        decoration: BoxDecoration(
          color: Color.fromRGBO(15, 33, 167, 0.884),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white, size: 20),
            SizedBox(width: 8),
            AppText(
              text: "ADD DOCUMENT",
              color: Colors.white,
              size: 16,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    ),
  ],
)          ],
        ),
      ),
    );
  }
}
