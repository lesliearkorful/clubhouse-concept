class Room {
  final String title;
  final String description;
  final int listeners;
  final int speakers;

  Room({
    required this.title,
    this.description = "",
    this.listeners = 0,
    this.speakers = 0,
  });
}
