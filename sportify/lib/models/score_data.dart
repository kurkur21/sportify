class ScoreData {
  final int id;
  final String tanggal;
  final String arena;
  final String score;
  final String team1;
  final String team2;
  final String logoTeam1;
  final String logoTeam2;

  ScoreData({
    required this.id,
    required this.tanggal,
    required this.arena,
    required this.score,
    required this.team1,
    required this.team2,
    required this.logoTeam1,
    required this.logoTeam2,
  });

  factory ScoreData.fromJson(Map<String, dynamic> json) {
    return ScoreData(
      id: json['id'],
      tanggal: json['tanggal'],
      arena: json['arena'],
      score: json['score'],
      team1: json['team1'],
      team2: json['team2'],
      logoTeam1: json['logot1'],
      logoTeam2: json['logot2'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tanggal': tanggal,
      'arena': arena,
      'score': score,
      'team1': team1,
      'team2': team2,
      'logot1': logoTeam1,
      'logot2': logoTeam2,
    };
  }
}
