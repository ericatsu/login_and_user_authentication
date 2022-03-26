import 'package:flutter/material.dart';

List<OnPages> pages = [
  OnPages(
    title: 'Hungry?',
    subtitle: "Confused about which Outfit to wear? Dont worry, find te best outfits here",
    img: 'assets/images/hungry.png',
  ),
  OnPages(
    title: 'Your style, Your way',
    subtitle:
    "Customize your unique styles, so you can look amazing anyday",
    img: 'assets/images/delivery.png',
  ),
  OnPages(
    title: 'Look good, Feel good',
    subtitle:
    "Discover the latest trend in fashion and explore your personality",
    img: 'assets/images/delivery.png',
  ),
  OnPages(
    title: 'Your style, Your way',
    subtitle:
    "Customize your unique styles, so you can look amazing anyday",
    img: 'assets/images/delivery.png',
  ),
  OnPages(
    title: 'Order groceries, beverages and essentials',
    subtitle:
    "Order all your groceries online and get them to yu at your doorstep.",
    img: 'assets/images/greenpepper.png',
  ),
];

class OnPages {
  final String title, subtitle, img;

  OnPages({ required this.title, required this.subtitle, required this.img});
}