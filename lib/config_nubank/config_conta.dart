import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});
  // Ícone personalizado para Pix
  static const IconData pix = IconData(0xf054e, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurar"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SectionTitle(title: "Serviços"),
          const ConfigOption(
            icon: Icons.credit_card,
            title: "Configurar cartão",
          ),
          const ConfigOption(
            icon: Icons.account_balance_wallet,
            title: "Configurar conta",
          ),
          // Ícone Pix aqui
          ConfigOption(
            icon: pix, // Ícone personalizado Pix
            title: "Configurar chaves Pix",
          ),
          const ConfigOption(
            icon: Icons.bar_chart,
            title: "Configurar perfil de investimentos",
          ),
          const ConfigOption(
            icon: Icons.swap_vert,
            title: "Transferir investimentos",
          ),
          const SizedBox(height: 16),
          const SectionTitle(title: "Aplicativo"),
          const ConfigOption(
            icon: Icons.person,
            title: "Editar dados do Perfil",
          ),
          const ConfigOption(
            icon: Icons.brightness_6,
            title: "Aparência",
          ),
          const ConfigOption(
            icon: Icons.help_outline,
            title: "Me ajuda",
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}

class ConfigOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const ConfigOption({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.black),
      onTap: () {
        // Adicione a ação ao clicar no item
      },
    );
  }
}
