import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:works/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<Map> chips = [
      {"icon": FontAwesomeIcons.code, "label": "Code"},
      {"icon": FontAwesomeIcons.html5, "label": "Web"},
      {"icon": FontAwesomeIcons.wordpress, "label": "WordPress"},
      {"icon": FontAwesomeIcons.accusoft, "label": "Accusoft"},
      {"icon": FontAwesomeIcons.ad, "label": "Ad"},
      {"icon": FontAwesomeIcons.artstation, "label": "Artstation"}
    ];

    List<Map> cards = [
      {"icon": FontAwesomeIcons.discord, "label": "Discord", "color": Colors.blue, "location": "Fulltime, Singapore", "work": "UX Designer"},
      {"icon": FontAwesomeIcons.uber, "label": "Uber", "color": Colors.black, "location": "Parttime, Australia", "work": "UX Designer"},
      {"icon": FontAwesomeIcons.yahoo, "label": "Yahoo", "color": Colors.redAccent, "location": "Fulltime, USA", "work": "UX Designer"},
      {"icon": FontAwesomeIcons.steam, "label": "Steam", "color": Colors.blue, "location": "Fulltime, Canada", "work": "UX Designer"},
      {"icon": FontAwesomeIcons.airbnb, "label": "Airbnb", "color": Colors.pink, "location": "Parttime Dubai", "work": "UX Designer"},
      {"icon": FontAwesomeIcons.audible, "label": "Audible", "color": Colors.green, "location": "Parttime Ethiopia", "work": "UX Designer"}
    ];

    List<Map> latestJobs = [
      {"icon": FontAwesomeIcons.twitter, "label": "Twitter", "color": Colors.blue, "location": "Fulltime, Singapore", "work": "Product Designer", "postDate": "2"},
      {"icon": FontAwesomeIcons.twitch, "label": "Twitch", "color": Colors.purple, "location": "Fulltime, Singapore", "work": "Product Designer", "postDate": "4"},
      {"icon": FontAwesomeIcons.dribbble, "label": "Dribbble", "color": Colors.pink, "location": "Fulltime, Singapore", "work": "Product Designer", "postDate": "6"},
    ];

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: mainPadding,
              child: Text("Catch your chance to \nbecome a new star.", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: mainPadding,
              child: Row(
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
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Color(0xfff0f0f0), width: 1)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Color(0xfff0f0f0), width: 1)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Color(0xfff0f0f0), width: 1)),
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
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.06,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: chips.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  // child: Padding(
                  //   padding: const EdgeInsets.only(right: 10.0),
                  //   child: Chip(
                  //     backgroundColor: Colors.white,
                  //     padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  //     label: Text("Chip"),
                  //   ),
                  // ),
                  child: Container(
                    margin: index == 0 ? const EdgeInsets.only(right: 10.0, left: 20.0) : const EdgeInsets.only(right: 10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(chips[index]['icon'], color: primaryColor),
                        SizedBox(width: size.width * 0.04),
                        Text(chips[index]['label'], style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: mainPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("🔥Hot Vacancies", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all", style: TextStyle(color: primaryColor, fontSize: 18.0)),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.28,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) => Container(
                  margin: index == 0 ? const EdgeInsets.only(right: 20.0, left: 20.0) : const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(cards[index]['icon'], size: 34.0, color: cards[index]['color']),
                      SizedBox(height: size.height * 0.02),
                      Text(cards[index]['work'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)),
                      Text(cards[index]['label'], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.grey)),
                      SizedBox(height: size.height * 0.02),
                      Text(cards[index]['location'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: mainPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("🆕 Latest Jobs", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all", style: TextStyle(color: primaryColor, fontSize: 18.0)),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: mainPadding,
              child: Container(
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
                              child: FaIcon(latestJobs[index]['icon'], color: latestJobs[index]['color'], size: 34.0),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(latestJobs[index]['work'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                                Text(latestJobs[index]['label'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.grey)),
                                SizedBox(height: size.height * 0.01),
                                Text(latestJobs[index]['location'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        Text("${latestJobs[index]['postDate']} days ago", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
