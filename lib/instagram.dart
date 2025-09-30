import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramProfile());
}

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Верхня панель (нік і меню)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.lock, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "jacob_w",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    Icon(Icons.menu),
                  ],
                ),
              ),

              // Аватарка + Статистика
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    // 🔽 ТУТ вставлене фото з assets 🔽
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/my_ava.jpg"),
                    ),

                    // Posts, Followers, Following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          _StatItem(label: "Posts", value: "54"),
                          _StatItem(label: "Followers", value: "834"),
                          _StatItem(label: "Following", value: "162"),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Ім’я та опис
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jacob West",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 2),
                    Text("Digital goodies designer @pixsellz"),
                    Text("Everything is designed."),
                  ],
                ),
              ),

              // Кнопка Edit Profile
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Edit Profile"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}
