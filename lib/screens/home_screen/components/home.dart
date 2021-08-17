import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:works/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02),
              Text("Catch your chance to \nbecome a new star.", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600)),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "Ex. Product Designer",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.slidersH),
                    splashRadius: 20.0,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.05,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.all(10.0),
                      height: size.height * 0.05,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FaIcon(FontAwesomeIcons.code, color: primaryColor),
                          SizedBox(width: size.width * 0.02),
                          Text("Coding", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("🔥Hot Vacancies", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all", style: TextStyle(color: primaryColor, fontSize: 18.0)),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.28,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.discord, size: 34.0, color: Colors.blue),
                        SizedBox(height: size.height * 0.02),
                        Text("UX Designer", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)),
                        Text("Discord", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.grey)),
                        SizedBox(height: size.height * 0.02),
                        Text("Fulltime, Singapore", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("🔥Latest Jobs", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all", style: TextStyle(color: primaryColor, fontSize: 18.0)),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.32,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                              child: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue, size: 34.0),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Product Designer", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                                Text("Tokopedia", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.grey)),
                                SizedBox(height: size.height * 0.01),
                                Text("Fulltime Singapore", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        Text("2 days ago", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
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
