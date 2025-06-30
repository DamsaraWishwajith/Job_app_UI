import 'package:flutter/material.dart';
import 'package:job_app/screens/homepage/widget/app_bar.dart';
import 'package:job_app/screens/homepage/widget/category.dart';
import 'package:job_app/screens/homepage/widget/greeting.dart';
import 'package:job_app/screens/homepage/widget/popularRow.dart';
import 'package:job_app/screens/jobviews/job_view.dart';
import 'package:job_app/services/getdata.dart';

import 'widget/searchBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomerAppBar(),
              SizedBox(height: 15),
              Greeting(),
              SizedBox(height: 20),
              CusSearchBar(size: size),
              SizedBox(height: 10),
              CategoryBar(title: 'Popular Jobs'),
              SizedBox(height: 10),
              PopularRow(size: size, data: data),
              SizedBox(height: 10),
              CategoryBar(title: 'Recently Jobs'),
              RecentlyJobs(data: data),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentlyJobs extends StatelessWidget {
  const RecentlyJobs({super.key, required this.data});

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(data.getJobData().length, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => JobViewPage(model: data.getJobData()[index]),
                ),
              );
            },
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data.getJobData()[index].logo),
                  radius: 25,
                ),
                title: Text(data.getJobData()[index].title),
                subtitle: Text(
                  "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(data.getJobData()[index].time),
              ),
            ),
          ),
        );
      }),
    );
  }
}
