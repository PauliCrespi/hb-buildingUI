import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  final String name;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // Permite usar tanto assets como URL remotas
    final ImageProvider avatarImage = imageUrl.startsWith('http')
        ? NetworkImage(imageUrl)
        : AssetImage(imageUrl) as ImageProvider;

    return Container(
      width: 340,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 92, 196, 248),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 50, backgroundImage: avatarImage),
          const SizedBox(height: 16),
          Text(
            name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
