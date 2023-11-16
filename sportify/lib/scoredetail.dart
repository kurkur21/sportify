import 'package:flutter/material.dart';

class ScoreDetail extends StatelessWidget {
  final String team1, team2, score, logoTeam1, logoTeam2, arena, tanggal;
  const ScoreDetail(
      {super.key,
      required this.team1,
      required this.team2,
      required this.arena,
      required this.score,
      required this.tanggal,
      required this.logoTeam1,
      required this.logoTeam2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                Icon(
                  Icons.menu,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      logoTeam1,
                      height: 64,
                    ),
                    Text(
                      team1,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      tanggal,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      score,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      arena,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      logoTeam2,
                      height: 64,
                    ),
                    Text(
                      team2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.cyan,
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "Statistik",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta gravida mauris non molestie. Quisque eget dolor lacinia, condimentum nunc in, maximus elit. Morbi commodo risus eu est tincidunt tempus. Praesent non enim lectus. Fusce quis euismod turpis. Vivamus luctus sodales pellentesque. Morbi ultricies, nisl sodales viverra lobortis, velit nisi gravida tortor, sed dapibus justo massa et urna."),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
