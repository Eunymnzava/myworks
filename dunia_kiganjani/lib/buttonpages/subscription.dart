import 'package:flutter/material.dart';
import '../widgets/app_largetext.dart';
import '../widgets/app_text.dart';


class SubscriptionPage extends StatefulWidget {
  final VoidCallback onUpgradePlanTapped;
   const SubscriptionPage({super.key, required this.onUpgradePlanTapped});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 231, 231, 0.675),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 30, left: 30, right: 20, bottom: 30),
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(13, 33, 161, 0.827),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromRGBO(12, 39, 148, 0.91),
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
                  const AppText(
                    text: "Current Plan",
                    color: Color.fromRGBO(215, 212, 212, 1),
                    size: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const AppLargeText(
                        text: "Premium",
                        color: Colors.white,
                        size: 38,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: AppText(
                            text: "ACTIVE",
                            color: Colors.white,
                            size: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 16,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      AppText(
                        text: " May 1 - May 31",
                        color: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 178, 177, 177),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: " Time Remaining",
                        size: 14,
                        color: Color.fromRGBO(103, 100, 100, 1),
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AppLargeText(
                        text: "11 Days",
                        size: 18,
                        color: Color.fromRGBO(9, 35, 147, 0.88),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromRGBO(9, 15, 128, 0.2),
                        width: 1.5,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Top indicator line of the clock frame
                        Positioned(
                          top: 0,
                          child: Container(
                            width: 25,
                            height: 3,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(9, 15, 128, 1),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.timer, // Or Icons.shutter_speed / Icons.alarm
                          color: Color.fromRGBO(9, 15, 128, 1),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(
                  text: "Resource Usage",
                  color: Color.fromRGBO(85, 79, 79, 1),
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 178, 177, 177),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.inventory_2_outlined,
                        size: 18,
                        color: const Color.fromRGBO(103, 100, 100, 1),
                      ),
                      const SizedBox(width: 8),
                      const AppText(
                        text: "Listings",
                        size: 16,
                        color: Color.fromRGBO(103, 100, 100, 1),
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      const AppText(
                        text: "12/50",
                        size: 14,
                        color: Color.fromRGBO(12, 17, 145, 0.858),
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.14,
                    backgroundColor: const Color.fromRGBO(234, 231, 231, 0.675),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        const Color.fromRGBO(9, 35, 147, 0.88)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 178, 177, 177),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.store_outlined,
                        size: 18,
                        color: Color.fromRGBO(103, 100, 100, 1),
                      ),
                      SizedBox(width: 8),
                      AppText(
                        text: "Branches",
                        size: 16,
                        color: Color.fromRGBO(103, 100, 100, 1),
                        fontWeight: FontWeight.w500,
                      ),
                      Spacer(),
                      AppText(
                        text: "2/5",
                        size: 14,
                        color: Color.fromRGBO(12, 17, 145, 0.858),
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.4,
                    backgroundColor: Color.fromRGBO(234, 231, 231, 0.675),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromRGBO(9, 35, 147, 0.88)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 178, 177, 177),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.insert_photo_outlined,
                    size: 18,
                    color: Color.fromRGBO(103, 100, 100, 1),
                  ),
                  SizedBox(width: 8),
                  AppText(
                    text: "Images Allowed",
                    size: 16,
                    color: Color.fromRGBO(103, 100, 100, 1),
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),
                  AppText(
                    text: "10",
                    size: 18,
                    color: Color.fromRGBO(12, 17, 145, 0.858),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            GestureDetector(
              onTap: widget.onUpgradePlanTapped,
              child: Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(9, 15, 128, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.upgrade,
                      color: Colors.white,
                    ),
                    Text(
                      "UPGRADE PLAN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color.fromARGB(51, 8, 15, 165),
                        width: 1.5,
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.undo_outlined,
                            color: Color.fromRGBO(9, 15, 128, 1)),
                        SizedBox(width: 5),
                        AppText(
                            text: "RENEW",
                            color: Color.fromRGBO(9, 15, 128, 1),
                            size: 14,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 207, 204, 204),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color.fromARGB(51, 12, 19, 155),
                        width: 1.5,
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.receipt_long_outlined,
                            color: Color.fromRGBO(122, 122, 123, 1)),
                        SizedBox(width: 5),
                        AppText(
                            text: "INVOICES",
                            color: Color.fromRGBO(62, 62, 63, 1),
                            size: 14,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
