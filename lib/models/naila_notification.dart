class NailaNotification {
  final int id;
  final String title;
  final String description;
  final String date_time;
  final String image;
  bool isRead = false;

  NailaNotification({
    required this.id,
    required this.title,
    required this.description,
    required this.date_time,
    required this.image,
    required this.isRead,
  });
}
