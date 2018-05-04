import 'dart:async';

class Proyectos {
  final String id;
  final String name;
  final String category;
  final String likes;
  final String description;
  final String image;

  const Proyectos({this.id, this.name, this.likes, this.category, this.description, this.image});
}

List<Proyectos> planets = [
  const Proyectos(
    id: "1",
    name: "Mars",
    category: "Milkyway Galaxy",
    likes: "14",
    description: "Lorem ipsum...",
    image: "assets/Project-Scope-Management-Cover.jpg",
  ),
  const Proyectos(
    id: "2",
    name: "Neptune",
    category: "Milkyway Galaxy",
    likes: "90",
    description: "Lorem ipsum...",
    image: "assets/Project-Scope-Management-Cover.jpg",
  ),
  const Proyectos(
    id: "3",
    name: "Moon",
    category: "Milkyway Galaxy",
    likes: "54",
    description: "Lorem ipsum...",
    image: "assets/Project-Scope-Management-Cover.jpg",
  ),
  const Proyectos(
    id: "4",
    name: "Earth",
    category: "Milkyway Galaxy",
    likes: "35",
    description: "Lorem ipsum...",
    image: "assets/Project-Scope-Management-Cover.jpg",
  ),
  const Proyectos(
    id: "5",
    name: "Mercury",
    category: "Milkyway Galaxy",
    likes: "5",
    description: "Lorem ipsum...",
    image: "assets/Project-Scope-Management-Cover.jpg",
  ),
];