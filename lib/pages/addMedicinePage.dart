import 'package:flutter/material.dart';
import 'package:medecin_app/models/medicine_model.dart';
import 'package:medecin_app/widgets/customButton.dart';

import '../models/Date.dart';
import '../widgets/customTextFild.dart';

class AddMedicine extends StatelessWidget {
  const AddMedicine({super.key});
  static String id = "addMedicinePage";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double getWidth(double ratio) {
      if (width > 900)
        return width * 0.5;
      else if (width > 600)
        return width * 0.6;
      else
        return width;
    }

    String scientificName;
    String commercialName;
    String category;
    String factory;
    int quantity;
    double price;
    int day;
    int month;
    int year;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF0F919E),
              Color(0xFF3AAFB8),
              Color(0xFF63CAD1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
        ),
        title: Text("Add Medicine"),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: getWidth(0.2),
            child: Row(
              children: [
                // Expanded(child: Container()),
                Expanded(
                  child: ListView(
                    children: [
                      CustomTextFild(
                        onChanged: (value) {
                          scientificName = value;
                        },
                        obsecure: false,
                        hintText: 'scientificName',
                      ),
                      CustomTextFild(
                        onChanged: (value) {
                          commercialName = value;
                        },
                        obsecure: false,
                        hintText: 'commercialName',
                      ),
                      CustomTextFild(
                        onChanged: (value) {
                          category = value;
                        },
                        obsecure: false,
                        hintText: 'category',
                      ),
                      CustomTextFild(
                        onChanged: (value) {
                          factory = value;
                        },
                        obsecure: false,
                        hintText: 'factory',
                      ),
                      CustomTextFild(
                        onChanged: (value) {
                          quantity = int.parse(value);
                        },
                        keyboardType: TextInputType.number,
                        obsecure: false,
                        hintText: 'quantity',
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFild(
                      onChanged: (value) {
                        price = double.parse(value);
                      },
                      keyboardType: TextInputType.number,
                      obsecure: false,
                      hintText: 'price',
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFild(
                            onChanged: (value) {
                              day = int.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            obsecure: false,
                            hintText: 'day',
                          ),
                        ),
                        Expanded(
                          child: CustomTextFild(
                            onChanged: (value) {
                              month = int.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            obsecure: false,
                            hintText: 'month',
                          ),
                        ),
                        Expanded(
                          child: CustomTextFild(
                            onChanged: (value) {
                              year = int.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            obsecure: false,
                            hintText: 'year',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomButton(text: 'Add', onTap: () {}),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
