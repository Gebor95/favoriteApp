import 'package:favotiteapp/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ContactList(),
    );
  }
}

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    final myfav = Provider.of<FavoriteProvider>(context, listen: true);
    return ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return ListTile(
            minVerticalPadding: 13.2,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(39),
              child: Image.asset("assets/images/avatarman2.jpeg")
              ),
            title: Text(
              "User $index",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            subtitle: const Text("+234-903-0297-400"),
            trailing: myfav.favoriteContacts.contains(index)? 
            const Icon(Icons.favorite_rounded, color: Colors.red,)
            : ElevatedButton.icon(
              onPressed: () {
                myfav.addFavorite(index);
              },
              icon: const Icon(Icons.add),
              label: const Text("Add"),
            ),
          );
        });
  }
}