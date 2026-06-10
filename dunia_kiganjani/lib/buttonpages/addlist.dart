import 'package:dunia_kiganjani/widgets/app_largetext.dart';
import 'package:flutter/material.dart';
import 'package:dunia_kiganjani/widgets/app_text.dart';

class AddListPage extends StatefulWidget {
  const AddListPage({super.key});

  @override
  State<AddListPage> createState() => _AddListPageState();
}

class _AddListPageState extends State<AddListPage> {
  int selectedTypeIndex = -1;
  int selectedPriceIndex = -1;

  final List<Map<String, dynamic>> things = [
    {'text': 'Service', 'icon': Icons.construction},
    {'text': 'Product', 'icon': Icons.inventory_2_outlined},
    {'text': 'Business', 'icon': Icons.storefront_outlined},
  ];

  final List<Map<String, dynamic>> prices = [
    {'text': 'Fixed'},
    {'text': 'Range'},
    {'text': 'Negotiable'},
    {'text': 'Quotation'},
  ];

  @override
  Widget build(BuildContext context) {
    bool isRangeSelected = selectedPriceIndex == 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- STEPPER TOP HEADER ---
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(12, 18, 195, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                            child: AppText(
                          text: "1",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Basic Info",
                        color: Color.fromRGBO(19, 26, 170, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 3,
                      color: const Color.fromARGB(255, 10, 7, 165),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(196, 197, 204, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                            child: AppText(
                          text: "2",
                          color: Color.fromRGBO(19, 26, 170, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Details",
                        color: Color.fromRGBO(116, 116, 118, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 3,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 210, 217),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: AppText(
                            text: "3",
                            color: Color.fromRGBO(19, 26, 170, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Review",
                        color: Color.fromRGBO(133, 133, 134, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const AppLargeText(
                text: "Add New Listing",
                color: Color.fromARGB(255, 7, 5, 168),
                size: 26,
              ),
              const SizedBox(height: 20),
              const AppText(
                text: "Listing Type",
                color: Color.fromRGBO(47, 47, 49, 1),
                size: 16,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.3,
                ),
                itemCount: things.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedTypeIndex == index; // Uses Type state variable

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTypeIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color.fromRGBO(15, 76, 174, 0.216)
                            : const Color.fromARGB(255, 235, 231, 231),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected
                              ? const Color.fromRGBO(10, 15, 172, 0.608)
                              : const Color.fromARGB(255, 195, 193, 193),
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              things[index]["icon"],
                              size: 20,
                              color: isSelected
                                  ? const Color.fromARGB(167, 6, 9, 116)
                                  : const Color.fromARGB(167, 9, 14, 152),
                            ),
                            const SizedBox(height: 2),
                            AppText(
                              text: things[index]["text"],
                              size: 16,
                              color: const Color.fromRGBO(11, 11, 11, 0.639),
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              
              // --- CATEGORY ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Category",
                    color: Color.fromARGB(221, 55, 54, 54),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 91, 84, 84),
                          width: 1.5),
                    ),
                    child: const Row(
                      children: [
                        AppText(
                          text: "Select a Category",
                          size: 14,
                          lineHeight: 1.5,
                          color: Color.fromARGB(221, 69, 66, 66),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_outlined,
                            size: 16, color: Color.fromARGB(221, 69, 66, 66))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // --- TITLE ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Title",
                    color: Color.fromARGB(221, 55, 54, 54),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 91, 84, 84),
                          width: 1.5),
                    ),
                    child: const AppText(
                      text: "e.g Emergency Plumbing Service",
                      size: 14,
                      lineHeight: 1.5,
                      color: Color.fromARGB(221, 116, 112, 112),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // --- DESCRIPTION ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Description",
                    color: Color.fromARGB(221, 55, 54, 54),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 91, 84, 84),
                          width: 1.5),
                    ),
                    child: const AppText(
                      text: "Describe your service or product in detail...",
                      size: 14,
                      lineHeight: 1.5,
                      color: Color.fromARGB(221, 116, 112, 112),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // --- PRICE WRAPPER BOX ---
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(196, 194, 194, 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      text: "Price Type",
                      color: Color.fromRGBO(36, 37, 38, 1),
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 6),
                    
                    // --- GRID 2: PRICE TYPE ---
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 2.3,
                      ),
                      itemCount: prices.length,
                      itemBuilder: (context, index) {
                        bool isSelected = selectedPriceIndex == index; // Uses Price state variable

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedPriceIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color.fromARGB(231, 26, 29, 203)
                                  : const Color.fromARGB(255, 235, 231, 231),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isSelected
                                    ? const Color.fromRGBO(10, 15, 172, 0.608)
                                    : const Color.fromARGB(255, 195, 193, 193),
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: AppText(
                                text: prices[index]["text"],
                                size: 13,
                                color: isSelected
                                    ? Colors.white
                                    : const Color.fromRGBO(11, 11, 11, 0.639),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    
                  
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AppText(
                                  text: "Price(TZS)",
                                  color: Colors.black54,
                                  size: 14,
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(255, 91, 84, 84),
                                        width: 1.5),
                                  ),
                                  child: const AppText(
                                    text: "0.00",
                                    size: 14,
                                    lineHeight: 1.5,
                                    color: Color.fromARGB(221, 116, 112, 112),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          const SizedBox(width: 16),
                
                          Expanded(
                            child: IgnorePointer(
                              ignoring: !isRangeSelected, // Disables touch entirely if not "Range"
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 250),
                                opacity: isRangeSelected ? 1.0 : 0.4, // Blurs/Greys it out
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppText(
                                      text: "Price To (TZS)",
                                      color: Colors.black54,
                                      size: 14,
                                    ),
                                    const SizedBox(height: 6),
                                    Container(
                                      width: double.maxFinite,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color.fromARGB(255, 91, 84, 84),
                                            width: 1.5),
                                      ),
                                      child: const AppText(
                                        text: "0.00",
                                        size: 14,
                                        lineHeight: 1.5,
                                        color: Color.fromARGB(221, 116, 112, 112),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 48, 54, 231),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: AppText(
                    text: "NEXT: CATEGORY DETAILS >>",
                    color: Colors.white,
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}