import 'package:dunia_kiganjani/widgets/app_text.dart';
import 'package:flutter/material.dart';
import '../widgets/app_largetext.dart';

class VendorDashboard extends StatefulWidget {
  final Function(String title, int activeActionIndex) onActionSelected;
  const VendorDashboard({super.key, required this.onActionSelected});

  @override
  State<VendorDashboard> createState() => _VendorDashboardState();
}

class _VendorDashboardState extends State<VendorDashboard> {
  int selectedIndex = -1;

  final List<Map<String, dynamic>> items = [
    {'text': 'Add Listing', 'icon': Icons.add_circle_outline},
    {'text': 'Add Branch', 'icon': Icons.account_tree_outlined},
    {'text': 'Upload Doc', 'icon': Icons.cloud_upload_outlined},
    {'text': 'Renew Sub', 'icon': Icons.loop_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "Vendor Dashboard",
                        size: 22,
                        color: Color.fromRGBO(44, 43, 43, 0.941),
                      ),
                      SizedBox(height: 5),
                      AppText(
                        text: "Mangi Plumbing Services",
                        size: 18,
                        color: Color.fromRGBO(6, 16, 143, 0.961),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(3, 11, 122, 0.961),
                    ),
                    child: const Center(
                      child: AppText(
                        text: "M",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 70, 166, 235),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 70, 166, 235),
                    width: 1.5,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Color.fromARGB(255, 16, 8, 170),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      text: "Subscription: ACTIVE",
                      size: 14,
                      lineHeight: 1.5,
                      color: Color.fromARGB(221, 69, 66, 66),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 201, 200, 200),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 201, 200, 200),
                    width: 1.5,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Color.fromARGB(255, 16, 8, 170),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      text: "Verification: APPROVED",
                      size: 14,
                      lineHeight: 1.5,
                      color: Color.fromARGB(221, 69, 66, 66),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: buildStatCard(
                      icon: Icons.inventory_2_outlined,
                      number: "12",
                      title: "Total Listings",
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildStatCard(
                      icon: Icons.remove_red_eye_outlined,
                      number: "1,245",
                      title: "Total Views",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: buildStatCard(
                      icon: Icons.message_outlined,
                      number: "87",
                      title: "Enquiries",
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildStatCard(
                      icon: Icons.star,
                      number: "4.7",
                      title: "Average Rating",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const AppLargeText(
                text: "Quick Actions",
                size: 20,
                color: Color.fromRGBO(39, 37, 37, 0.937),
              ),
              const SizedBox(height: 15),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 3.2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });

                      widget.onActionSelected(
                        items[index]["text"],
                        index,
                      );
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color.fromARGB(255, 235, 231, 231)
                            : const Color.fromARGB(183, 7, 12, 147),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected
                              ? const Color.fromARGB(255, 195, 193, 193)
                              : const Color.fromARGB(155, 7, 13, 159),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              items[index]["icon"],
                              size: 16,
                              color: isSelected
                                  ? const Color.fromARGB(167, 9, 14, 152)
                                  : Colors.white,
                            ),
                            const SizedBox(width: 8),
                            AppText(
                              text: items[index]["text"],
                              size: 14,
                              color: isSelected
                                  ? const Color.fromARGB(164, 12, 17, 162)
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Recent Enquiries",
                    size: 20,
                    color: Color.fromRGBO(39, 37, 37, 0.937),
                  ),
                  AppText(
                    text: "View All",
                    size: 14,
                    color: Color.fromRGBO(10, 19, 148, 0.689),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              buildEnquiryCard(
                name: "John Doe",
                enquiry: "Emergency pipe repair",
              ),
              const SizedBox(height: 10),
              buildEnquiryCard(
                name: "Sarah Smith",
                enquiry: "Installing quote",
              ),
              const SizedBox(height: 10),
              buildEnquiryCard(
                name: "Peter Kamau",
                enquiry: "Maintenance contract",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatCard({
    required IconData icon,
    required String number,
    required String title,
  }) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 215, 215),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 22,
                color: const Color.fromRGBO(3, 11, 122, 0.961),
              ),
            ),
          ),
          const SizedBox(height: 10),
          AppLargeText(
            text: number,
            color: const Color.fromRGBO(6, 16, 143, 0.961),
            size: 31,
          ),
          const SizedBox(height: 5),
          AppText(
            text: title,
            size: 16,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  /// ENQUIRY CARD WIDGET
  Widget buildEnquiryCard({
    required String name,
    required String enquiry,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(235, 132, 204, 243),
            ),
            child: const Icon(
              Icons.person_outline,
              size: 22,
              color: Color.fromRGBO(3, 11, 122, 0.5),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: name,
                size: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              AppText(
                text: enquiry,
                size: 14,
                color: Colors.black54,
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(
                Icons.local_phone_outlined,
                size: 22,
                color: Color.fromRGBO(3, 11, 122, 0.961),
              ),
              SizedBox(width: 15),
              Icon(
                Icons.message_outlined,
                size: 22,
                color: Color.fromRGBO(3, 11, 122, 0.961),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
