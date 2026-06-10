import 'package:dunia_kiganjani/widgets/button.dart';
import 'package:flutter/material.dart';
import '../widgets/app_largetext.dart';
import '../widgets/app_text.dart';

class VendorProfile extends StatefulWidget {
  const VendorProfile({super.key});

  @override
  State<VendorProfile> createState() => _HomePageState();
}

class _HomePageState extends State<VendorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  AppLargeText(
                    text: "Business Profile",
                    color: Colors.black87,
                    size: 24,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  AppText(
                    text: "Manage your business identity and contact details.",
                    color: Color.fromARGB(255, 87, 85, 85),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(top: 35),
                height: 200,
                width: double.maxFinite,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 231, 231),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/images/pict-2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: -2,
                            bottom: -2,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(214, 15, 22, 210),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const AppText(
                        text: "Change Business Logo",
                        color: Color.fromARGB(214, 15, 22, 210),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // --- BUSINESS NAME SECTION ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Business Name",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const AppText(
                      text: "Mangi Plumbing Services",
                      size: 14,
                      color: Color.fromARGB(221, 69, 66, 66),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // --- VENDOR TYPE SECTION ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Vendor Type",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(157, 208, 245, 0.4),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromRGBO(7, 13, 117, 0.867),
                                width: 1.5),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.person,
                                    size: 16,
                                    color: Color.fromARGB(221, 69, 66, 66)),
                                SizedBox(width: 6),
                                AppText(
                                  text: "Individual",
                                  size: 14,
                                  color: Color.fromARGB(221, 69, 66, 66),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(157, 208, 245, 0.4),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromRGBO(7, 13, 117, 0.867),
                                width: 1.5),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.business,
                                    size: 16,
                                    color: Color.fromARGB(221, 69, 66, 66)),
                                SizedBox(width: 6),
                                AppText(
                                  text: "Company",
                                  size: 14,
                                  color: Color.fromARGB(221, 69, 66, 66),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // --- DESCRIPTION SECTION ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Description",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const AppText(
                      text:
                          "Professional plumbing solutions including pipe repair, installation and maintenance for residential and commercial properties in Dar es Salaam.",
                      size: 14,
                      lineHeight: 1.5,
                      color: Color.fromARGB(221, 69, 66, 66),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // --- PHONE NUMBER SECTION ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Phone Number",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.phone,
                            size: 16, color: Color.fromARGB(221, 69, 66, 66)),
                        SizedBox(width: 10),
                        AppText(
                          text: "+255 700 000 000",
                          size: 14,
                          lineHeight: 1.5,
                          color: Color.fromARGB(221, 69, 66, 66),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "WhatsApp",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.chat_outlined,
                            size: 16, color: Color.fromARGB(221, 69, 66, 66)),
                        SizedBox(width: 10),
                        AppText(
                          text: "+255 700 111 222",
                          size: 14,
                          lineHeight: 1.5,
                          color: Color.fromARGB(221, 69, 66, 66),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Email Address",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.mail_outlined,
                            size: 16, color: Color.fromARGB(221, 69, 66, 66)),
                        SizedBox(width: 10),
                        AppText(
                          text: "mangi.plumbing@dunia.com",
                          size: 14,
                          lineHeight: 1.5,
                          color: Color.fromARGB(221, 69, 66, 66),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Website",
                    color: Color.fromRGBO(7, 13, 117, 0.867),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(157, 208, 245, 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(7, 13, 117, 0.867),
                          width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.language_outlined,
                            size: 16, color: Color.fromARGB(221, 69, 66, 66)),
                        SizedBox(width: 10),
                        AppText(
                          text: "https://www.mangiplumbing.com",
                          size: 14,
                          lineHeight: 1.5,
                          color: Color.fromARGB(221, 69, 66, 66),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const ResponsiveButton(
                text: "SAVE CHANGES",
                width: double.maxFinite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
