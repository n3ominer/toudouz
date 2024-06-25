class Todo {
  int id;
  String title;
  String description;
  bool isCompleted;
  String time;

  Todo(this.id, this.title, this.description, this.isCompleted, this.time);
}

final List<Todo> mockTodos = [
  Todo(0, "Faire du sport", "Alelr à la salle 3x / semaine", false, "9:00"),
  Todo(1, "Lire un livre", "20 pages par jour", false, "9:00"),
  Todo(2, "Coder une app", "Coder une app de todo", false, "9:00"),
  Todo(3, "Apprendre Flutter", "Apprendre à utiliser le framework Flutter", false, "9:00"),
  Todo(5, "Apprendre à jouer d'un instrument", "Apprendre à jouer de la guitare", false, "9:00"),
  Todo(4, "Préparer la présentation", "Alelr à la salle 3x / semaine", false, "9:00"),
  Todo(6, "Préparer les vacances", "Lister les villes à visiter", false, "9:00"),
  Todo(7, "Acheter les billets d'avion", "", false, "9:00"),
  Todo(8, "Faire les courses", "", false, "9:00"),
  Todo(9, "Annuler abonnement musique", "", false, "9:00"),
  Todo(10, "Promener le chien", "", false, "9:00"),
];