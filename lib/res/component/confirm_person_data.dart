
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/ScheduleScreen/controller.dart';
import '../colors/color.dart';


class PersonData extends StatelessWidget {
  PersonData({Key? key,}) : super(key: key);
  final controller = Get.put<PersonDataController>(PersonDataController());

  @override
  Widget build(BuildContext context) {

    return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.grey.shade600),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(
                              vertical: 30), // Increase this value
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone_outlined,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                          labelText: 'Phone No',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.grey.shade600),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(
                              vertical: 30), // Increase this value
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.location_city_outlined,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                          labelText: 'Address',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.grey.shade600),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(
                              vertical: 30),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.design_services_rounded,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                          labelText: 'Service Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.grey.shade600),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(
                              vertical: 30),
                        ),
                      ),
                      // RoundButton(
                      //   title: "Save",
                      //   onPress: () => {},
                      // ),
                    ]
                ),
              );
  }
}