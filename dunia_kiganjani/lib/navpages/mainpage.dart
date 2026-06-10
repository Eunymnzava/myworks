import 'package:flutter/material.dart';
import 'package:dunia_kiganjani/widgets/app_largetext.dart';
import 'package:dunia_kiganjani/buttonpages/addbranch.dart';
import 'package:dunia_kiganjani/buttonpages/addlist.dart'; // Ensure this is imported!
import '/navpages/search_page.dart';
import 'ven_profile.dart';
import 'home.dart';
import 'dashpage.dart';
import '../buttonpages/uploaddoc.dart';
import '../buttonpages/subscription.dart';
import '../buttonpages/upgradeplan.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  String appbarTitle = "Dunia Kiganjani";

  // -1 = Default Dashboard, 1 = Add Branch, 2 = Add Listing ,3= Upload documents,4 = Subscription, 5 = Upgrade Plan
  int dashboardSubViewIndex = -1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
      if (index == 2) {
        if (dashboardSubViewIndex == 1) {
          appbarTitle = "Business Location";
        } else if (dashboardSubViewIndex == 3) {
          appbarTitle = "Business Documents";
        } else {
          appbarTitle = "Dunia Kiganjani";
        }
      } else {
        appbarTitle = "Dunia Kiganjani";
      }

      if (index != 2) {
        dashboardSubViewIndex = -1; // Reset sub-view when leaving dashboard
      }
    });
  }

  Widget _getActivePageBody() {
    switch (currentIndex) {
      case 0:
        return  HomePage();
      case 1:
        return const SearchPage();
      case 2:
        // Dashboard nesting router
        if (dashboardSubViewIndex == 1) {
          return const AddBranchPage();
        } else if (dashboardSubViewIndex == 2) {
          return const AddListPage(); // Displays Add Listing inside the framework
        } else if (dashboardSubViewIndex == 3) {
          return const UploadDocsPage(); // Displays Upload Documents inside the framework
        } else if (dashboardSubViewIndex == 4) {
          return SubscriptionPage(
            onUpgradePlanTapped: () {
              setState(() {
                dashboardSubViewIndex = 5; // Navigate to Upgrade Plan
                appbarTitle = "Dunia Kiganjani"; // Keep the title the same
              });
            },
          );
        } else if (dashboardSubViewIndex == 5) {
          return const UpgradePlan();
        }

        return VendorDashboard(
          onActionSelected: (selectedActionName, actionIndex) {
            Future.delayed(const Duration(milliseconds: 300), () {
              if (!mounted) return;

              setState(() {
                if (actionIndex == 0) {
                  // 'Add Listing' is clicked (Index 0 in your items grid)
                  dashboardSubViewIndex = 2;
                  appbarTitle =
                      "Dunia Kiganjani"; // Keeps the title exactly the same
                } else if (actionIndex == 1) {
                  // 'Add Branch' is clicked (Index 1 in your items grid)
                  dashboardSubViewIndex = 1;
                  appbarTitle = "Business Location"; // Changes the title text
                } else if (actionIndex == 2) {
                  // 'Upload Documents' is clicked (Index 2 in your items grid)
                  dashboardSubViewIndex = 3;
                  appbarTitle = "Business Documents"; // Changes the title text
                } else if (actionIndex == 3) {
                  // 'Renew Sub' is clicked (Index 3 in your items grid)
                  dashboardSubViewIndex = 4;
                  appbarTitle = "Dunia Kiganjani"; // Changes the title text
                }
              });
            });
          },
        );
      case 3:
        return const VendorProfile();
      default:
        return  HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Check if we are inside any sub-view to display the back arrow setup
    bool isViewingSubPage = currentIndex == 2 && dashboardSubViewIndex != -1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 238, 238, 0.5),
        elevation: 0,
        title: AppLargeText(
          text: appbarTitle,
          size: 24,
          color: const Color.fromRGBO(3, 11, 122, 0.961),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              isViewingSubPage ? Icons.arrow_back : Icons.menu,
              color: const Color.fromRGBO(3, 11, 122, 0.961),
            ),
            onPressed: () {
              if (isViewingSubPage) {
                setState(() {
                  if (dashboardSubViewIndex == 5) {
                    // Take them back to Subscription, keeping the title as "Dunia Kiganjani"
                    dashboardSubViewIndex = 4;
                    appbarTitle = "Dunia Kiganjani";
                  } else {
                    // For all other pages, go back to the main dashboard menu
                    dashboardSubViewIndex = -1;
                    appbarTitle = "Dunia Kiganjani";
                  }
                });
              }
            },
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_outlined,
              color: Color.fromRGBO(3, 11, 122, 0.961),
            ),
          ),
        ],
      ),
      body: _getActivePageBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromRGBO(9, 15, 128, 0.908),
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
