class Game {
  final String name;
  final String description;
  final String time;
  final String image;
  final List<String> purpose;
  final String color;
  final List<String> tools;

  Game({
    required this.name,
    required this.description,
    required this.time,
    required this.image,
    required this.purpose,
    required this.color,
    required this.tools,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      name: json['naem'],
      description: json['description'],
      time: json['time'],
      image: json['image'],
      purpose: List<String>.from(json['purpose']),
      color: json['color'],
      tools: List<String>.from(json['tools']),
    );
  }
}
