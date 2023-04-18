import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botones",
    subTitle: "Varios Botones En Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Tarjetas",
    subTitle: "Un contenedor estilisado",
    link: "/cards",
    icon: Icons.credit_card_outlined,
  ),
  MenuItem(
    title: "ProgressIndicators",
    subTitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_outlined,
  ),
  MenuItem(
    title: "Snackbars y diálogos",
    subTitle: "Indicadores en pantalla",
    link: "/snackbars",
    icon: Icons.info_outline,
  ),
];
