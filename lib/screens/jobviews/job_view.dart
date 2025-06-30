import 'package:flutter/material.dart';
import 'package:job_app/models/job_model.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key, required this.model});

  final JobModel model;

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabButton = ["Description", "Company", "Reviews"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://tse3.mm.bing.net/th?id=OIP.dYtYlTH36yVPAfXOAAsaqQHaE8&pid=Api&P=0&h=220',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            // ignore: deprecated_member_use
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.title,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.model.salary,
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              widget.model.type,
                              style: TextStyle(color: Colors.grey.shade200),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(widget.model.logo),
                              radius: 20,
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  widget.model.companyName,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  widget.model.city,
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.model.time,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                    tabButton.map((e) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            tabIndex = tabButton.indexOf(e);
                          });
                        },
                        child: Chip(
                          backgroundColor:
                              tabIndex == tabButton.indexOf(e)
                                  ? Colors.black
                                  : Colors.white,
                          label: Text(
                            e,
                            style: TextStyle(
                              color:
                                  tabIndex == tabButton.indexOf(e)
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
              tabIndex == 0
                  ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 170,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Now, the Redguard namespace includes detailed descriptions of the quests, characters, and items, along with photos, most of which Dillion took himself.Daniel Larlham, ArsTechnica, 2 May 2025 The description of the suspect was the same as in the first robbery.Justin Muszynski, Hartford Courant, 2 May 2025 By implementing generative AI tools, eBay streamlined the listing process for over 10 million sellers, enabling automatic generation of item descriptions and attributes from photos.Emil Sayegh, Forbes.com, 1 May 2025 may imply inherent, essential resemblance rather than obvious or superficial likenesses.',
                      ),
                    ),
                  )
                  : tabIndex == 1
                  ? Text("Company")
                  : Text("Reviews"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: size.width,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.bookmark, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: size.width * 0.6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Apply Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
