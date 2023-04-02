import 'package:flutter/material.dart';

import 'basic_information_widget.dart';
import 'license_reference_widget.dart';
import 'profile_reviews_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final PageController pageView = PageController(initialPage: 0);

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Nisha Profile", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0.0,

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: const Center(
                  child: Text("Nisha Kumari", style: TextStyle(color: Colors.white)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: LinearProgressIndicator(
                  color: Colors.greenAccent,
                  backgroundColor: Colors.purple,
                  value: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Profile completion"),
                    Text("40%"),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber.withOpacity(0.5),
                child: const Center(child: Text("Profile section")),
              ),
              // PreferredSize(
              //   preferredSize: const Size.fromHeight(kToolbarHeight),
              //   child: AppBar(
              //     bottom: TabBar(
              //       physics: const BouncingScrollPhysics(),
              //       controller: _tabController,
              //       onTap: (int i){
              //         setState(() {
              //         });
              //       },
              //       isScrollable: true,
              //       tabs: const [
              //         Tab(text: 'Basic Information'),
              //         Tab(text: 'Licensure & References'),
              //         Tab(text: 'Reviews'),
              //       ],
              //     ),
              //   ),
              // ),
              TabBar(
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                onTap: (int i){
                  setState(() {
                  });
                },
                isScrollable: true,
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Basic Information'),
                  Tab(text: 'Licensure & References'),
                  Tab(text: 'Reviews'),
                ],
              ),
              if(_tabController.index==0)
                GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details) {
                  setState(() {
                    double? pVelocity = details.primaryVelocity;
                    if(pVelocity != null && pVelocity < 0) {
                      if(_tabController.index < 2) {
                        _tabController.index++;
                      }
                    } else {
                      if(_tabController.index > 0) {
                        _tabController.index--;
                      }
                    }
                  });
                  },
                    child: const BasicInformationWidget())
              else if(_tabController.index==1)
                GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      setState(() {
                        double? pVelocity = details.primaryVelocity;
                        if(pVelocity != null && pVelocity < 0) {
                          if(_tabController.index < 2) {
                            _tabController.index++;
                          }
                        } else {
                          if(_tabController.index > 0) {
                            _tabController.index--;
                          }
                        }
                      });
                    },
                    child: const LicenseReferenceWidget())
              else
                GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      setState(() {
                        double? pVelocity = details.primaryVelocity;
                        if(pVelocity != null && pVelocity < 0) {
                          if(_tabController.index < 2) {
                            _tabController.index++;
                          }
                        } else {
                          if(_tabController.index > 0) {
                            _tabController.index--;
                          }
                        }
                      });
                    },
                    child: const ProfileReviewsWidget())
            ],
          ),
        ),
      ),
    );
  }
}
