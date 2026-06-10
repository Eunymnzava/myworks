import 'package:flutter/material.dart';
import '../widgets/app_largetext.dart';
import '../widgets/app_text.dart';

class UpgradePlan extends StatefulWidget {
  const UpgradePlan({super.key});

  @override
  State<UpgradePlan> createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(188, 190, 206, 0.29),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Upgrade Your Business",
                  size: 30,
                  color: Color.fromRGBO(12, 31, 143, 1),
                ),
                SizedBox(height: 15),
                Text(
                  "Choose a plan that fits your growth. Manage listings, branches, and reach more customers across Tanzania.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(89, 90, 96, 1),
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 325,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 218, 222, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: AppLargeText(
                        text: "BASIC",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      AppLargeText(
                        text: "TZS 20,000",
                        size: 38,
                        color: Color.fromRGBO(11, 28, 128, 1),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      AppText(
                        text: "/month",
                        size: 12,
                        color: Color.fromRGBO(100, 101, 105, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: Color.fromRGBO(11, 28, 128, 1)),
                      SizedBox(width: 8),
                      AppText(
                        text: "5 Premium Listings",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: Color.fromRGBO(11, 28, 128, 1)),
                      SizedBox(width: 8),
                      AppText(
                        text: "1 Business Branch",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.cancel_outlined,
                          color: Color.fromRGBO(157, 157, 160, 1)),
                      SizedBox(width: 8),
                      Text(
                        "Featured Listing Ads",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(51, 51, 53, 1),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromARGB(255, 11, 30, 137),
                      ),
                    ),
                    child: const Center(
                      child: AppLargeText(
                        text: "Select Basic",
                        size: 18,
                        color: Color.fromRGBO(11, 28, 128, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 380,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(230, 8, 10, 141),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 138, 158, 241),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: AppLargeText(
                            text: "PREMIUM",
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          AppLargeText(
                            text: "TZS 100,000",
                            size: 38,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          AppText(
                            text: "/month",
                            size: 12,
                            color: Color.fromRGBO(100, 101, 105, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.star_border_outlined,
                              color: Color.fromRGBO(89, 113, 246, 1)),
                          SizedBox(width: 8),
                          AppText(
                            text: "50 Premium Listings",
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Color.fromRGBO(78, 104, 247, 1)),
                          SizedBox(width: 8),
                          AppText(
                            text: "Unlimited Branches",
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Color.fromRGBO(89, 113, 246, 1)),
                          SizedBox(width: 8),
                          AppText(
                            text: "Featured Allowed (Top Search)",
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Color.fromRGBO(89, 113, 246, 1)),
                          SizedBox(width: 8),
                          AppText(
                            text: "24/7 Dedicated Support",
                            size: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromARGB(255, 11, 30, 137),
                          ),
                        ),
                        child: const Center(
                          child: AppLargeText(
                            text: "Go Premium Now",
                            size: 18,
                            color: Color.fromRGBO(11, 28, 128, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -15,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(214, 5, 67, 159),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: AppLargeText(
                          text: "MOST POPULAR",
                          size: 12,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 325,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: 130,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 218, 222, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: AppLargeText(
                        text: "STANDARD",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      AppLargeText(
                        text: "TZS 50,000",
                        size: 38,
                        color: Color.fromRGBO(11, 28, 128, 1),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      AppText(
                        text: "/month",
                        size: 12,
                        color: Color.fromRGBO(100, 101, 105, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: Color.fromRGBO(11, 28, 128, 1)),
                      SizedBox(width: 8),
                      AppText(
                        text: "20 Premium Listings",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: Color.fromRGBO(11, 28, 128, 1)),
                      SizedBox(width: 8),
                      AppText(
                        text: "3 Business Branches",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                 const Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: Color.fromRGBO(11, 28, 128, 1)),
                      SizedBox(width: 8),
                      AppText(
                        text: "Verified Merchant Badge",
                        size: 14,
                        color: Color.fromRGBO(51, 51, 53, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromARGB(255, 11, 30, 137),
                      ),
                    ),
                    child: const Center(
                      child: AppLargeText(
                        text: "Select Standard",
                        size: 18,
                        color: Color.fromRGBO(11, 28, 128, 1),
                      ),
                    ),
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
