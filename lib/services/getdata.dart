import 'package:job_app/models/job_model.dart';

class GetData {
  final instaLogo =
      'https://static.vecteezy.com/system/resources/previews/018/930/692/original/instagram-logo-instagram-icon-transparent-free-png.png';
  final uberLogo =
      'https://tse2.mm.bing.net/th?id=OIP.bgDrtx5tGyZYokZIQt-QAgHaHa&pid=Api&P=0&h=220';
  final tiktokLogo = 'https://logodix.com/logo/2207578.png';

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
        title: "Senior UX Designer",
        salary: "LKR 80000 /month",
        companyName: "Tik Tok",
        logo: tiktokLogo,
        city: "Colombo",
        time: "27 Days Left",
      ),
      JobModel(
        title: "Senior Ui Designer",
        salary: "LKR 80000 /month",
        companyName: "Uber",
        logo: uberLogo,
        city: "Kurunegala",
        time: "47 Days Left",
      ),
      JobModel(
        title: "Senior Mobile Developer",
        salary: "LKR 80000 /month",
        companyName: "Tik Tok",
        logo: tiktokLogo,
        city: "Kandy",
        time: "5 Days Left",
      ),
      JobModel(
        title: "Senior Web Developer",
        salary: "LKR 80000 /month",
        companyName: "Uber",
        logo: uberLogo,
        city: "Jaffna",
        time: "6 Days Left",
      ),
    ];
    return jobs;
  }
}
