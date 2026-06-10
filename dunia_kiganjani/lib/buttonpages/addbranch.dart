import 'package:flutter/material.dart';
import 'package:dunia_kiganjani/widgets/app_largetext.dart';
import 'package:dunia_kiganjani/widgets/app_text.dart';
import 'package:dotted_border/dotted_border.dart';

class AddBranchPage extends StatefulWidget {
  const AddBranchPage({super.key});

  @override
  State<AddBranchPage> createState() => _AddBranchPageState();
}

class _AddBranchPageState extends State<AddBranchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      height:
                          150, // Removed redundant width: 150 since Expanded dictates width
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(237, 10, 8, 144),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: 'Total Outlets',
                            color: Color.fromRGBO(253, 250, 250, 0.5),
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppLargeText(
                                text: '02',
                                color: Color.fromRGBO(252, 250, 250, 0.5),
                              ),
                              Spacer(),
                              Icon(
                                Icons.location_on_outlined,
                                size: 30,
                                color: Color.fromRGBO(251, 251, 251, 0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: 'Coverage',
                            color: Color.fromARGB(172, 79, 76, 76),
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Row(
                            children: [
                              AppLargeText(
                                text: '30',
                                color: Color.fromARGB(221, 18, 14, 146),
                              ),
                              AppText(
                                text: 'km',
                                color: Color.fromARGB(221, 18, 14, 146),
                                fontWeight: FontWeight.bold,
                              ),
                              Spacer(),
                              Icon(
                                Icons.pin_drop_outlined,
                                size: 24,
                                color: Color.fromARGB(221, 18, 14, 146),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 45),

              const Row(
                children: [
                  AppText(
                    text: "Active Nodes",
                    color: Colors.black87,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  AppText(
                    text: "View Map View",
                    color: Color.fromRGBO(8, 16, 129, 0.767),
                    size: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // --- MAIN BRANCH INFO CARD ---
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MAP STACK CONTAINER
                    Container(
                      width: double.maxFinite,
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              'assets/images/map1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.4),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(193, 26, 16, 225),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                  )
                                ],
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  AppText(
                                    text: "Primary Hub",
                                    color: Colors.white,
                                    size: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    // CARD LABELS
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Row(
                        children: [
                          AppText(
                            text: "Main Branch",
                            color: Color.fromRGBO(10, 8, 101, 0.651),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          AppText(
                            text: "20km",
                            color: Color.fromRGBO(10, 9, 106, 0.675),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: Color.fromARGB(213, 88, 83, 83),
                          ),
                          SizedBox(width: 4),
                          AppText(
                            text: "Mwenge, Dar es Salaam",
                            color: Color.fromARGB(213, 88, 83, 83),
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          AppText(
                            text: "SERVICE RADIUS",
                            color: Color.fromARGB(173, 96, 89, 89),
                            size: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 58,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(10, 6, 101, 0.757),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mode_edit_outline_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  AppText(
                                    text: "Edit Details",
                                    color: Colors.white,
                                    size: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          // SHARE BUTTON
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            child: const Icon(
                              Icons.share_outlined,
                              color: Color.fromRGBO(10, 21, 136, 1),
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MAP STACK CONTAINER
                    Container(
                      width: double.maxFinite,
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              'assets/images/map2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // CARD LABELS
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Row(
                        children: [
                          AppText(
                            text: "Branch 2",
                            color: Color.fromRGBO(10, 8, 101, 0.651),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          AppText(
                            text: "10km",
                            color: Color.fromRGBO(10, 9, 106, 0.675),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city_outlined,
                            size: 18,
                            color: Color.fromARGB(213, 88, 83, 83),
                          ),
                          SizedBox(width: 4),
                          AppText(
                            text: "Kariakoo, Dar es Salaam",
                            color: Color.fromARGB(213, 88, 83, 83),
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          AppText(
                            text: "SERVICE RADIUS",
                            color: Color.fromARGB(173, 96, 89, 89),
                            size: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 20,
                      ),
                      child: Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 58,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:
                                      const Color.fromRGBO(10, 6, 101, 0.757),
                                  width: 0.8,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mode_edit_outline_outlined,
                                    color: Color.fromRGBO(10, 6, 101, 0.757),
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  AppText(
                                    text: "Edit ",
                                    color: Color.fromRGBO(10, 6, 101, 0.757),
                                    size: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 58,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:
                                      const Color.fromRGBO(10, 6, 101, 0.757),
                                  width: 0.8,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Color.fromRGBO(10, 6, 101, 0.757),
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  AppText(
                                    text: "Set Main ",
                                    color: Color.fromRGBO(10, 6, 101, 0.757),
                                    size: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DottedBorder(
                      color: Colors.grey.shade400,
                      strokeWidth: 2,
                      dashPattern: const [8, 4],
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(210, 210, 210, 0.4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: const Icon(
                                Icons.add_location_alt_outlined,
                                size: 35,
                                color: Color.fromARGB(193, 26, 16, 225),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const AppText(
                              text: "Expand Reach",
                              color: Color.fromRGBO(24, 24, 24, 0.757),
                              size: 22,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const AppText(
                              text:
                                  "Adding more branches allows you to cater to a wider customer base across different regions.",
                              color: Color.fromRGBO(44, 44, 44, 0.757),
                              size: 15,
                              fontWeight: FontWeight.w400,
                              lineHeight: 1.4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(193, 19, 10, 193),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outlined,
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(width: 15),
                          AppText(
                            text: "ADD BRANCH",
                            color: Colors.white,
                            size: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
