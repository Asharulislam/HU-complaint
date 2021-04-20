class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({this.title, this.subject, this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: "HIET",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 12:30:00"),
  ),
  Alert(
    title: "MEDICAL SCIENCES",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "PHARMACY",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 14:30:00"),
  ),
   Alert(
    title: "HIMS",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "LAW",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "EASTERN MEDICINE",
    subject: "Click here to register complaint",
    // time: DateTime.parse("2020-06-06 14:30:00"),
  ),
];