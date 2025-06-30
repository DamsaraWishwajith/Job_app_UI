import 'package:flutter/material.dart';
import 'package:job_app/screens/jobviews/job_view.dart';
import 'package:job_app/services/getdata.dart';

class PopularRow extends StatelessWidget {
  const PopularRow({super.key, required this.size, required this.data});

  final Size size;
  final GetData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobViewPage(model: data.getJobData()[index],)),
              );
            },
            child: JobCard(size: size, data: data, index: index),
          );
        }),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.size,
    required this.data,
    required this.index,
  });

  final Size size;
  final GetData data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: size.width * 0.75,
        height: size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.getJobData()[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.bookmark_add_rounded,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    data.getJobData()[index].salary,
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
                      data.getJobData()[index].type,
                      style: TextStyle(color: Colors.grey.shade200),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      data.getJobData()[index].logo,
                    ),
                    radius: 25,
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        data.getJobData()[index].companyName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.getJobData()[index].city,
                        style: TextStyle(
                          color: Colors.white,
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
                      data.getJobData()[index].time,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
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
