import 'package:favotiteapp/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:favotiteapp/providers/counter.dart';
import 'package:provider/provider.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (context, index, child)
    {
    return  ListView.builder(
        itemCount: index.favoriteContacts.length,
        itemBuilder: (context, i) {
          return ListTile(
            minVerticalPadding: 13.2,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(39),
              child: Image.asset("assets/images/avatarman2.jpeg")
              ),
            title:  Text(
              "User ${index.favoriteContacts[i]}",
              style:  const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            subtitle: const Text("+234-903-0297-400"),
            trailing: ElevatedButton.icon(
              onPressed: () {
               Provider.of<FavoriteProvider>(context, listen: false).removeFavorite(index.favoriteContacts[i]);
              },
              icon: const Icon(Icons.cancel_sharp, color: Colors.red,),
              label: const Text("Remove", style: TextStyle(color: Colors.red),),
            ),
          );
        });
    });
  }
}



// class myfase extends StatelessWidget {
//   const myfase({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           return ListTile(
//             minVerticalPadding: 13.2,
//             leading: ClipRRect(
//               borderRadius: BorderRadius.circular(39),
//               child: Image.asset("assets/images/avatarman2.jpeg")
//               ),
//             title: const Text(
//               "names",
//               style:  TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.blue,
//               ),
//             ),
//             subtitle: const Text("+234-903-0297-400"),
//             trailing: ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.cancel_sharp, color: Colors.red,),
//               label: const Text("Remove", style: TextStyle(color: Colors.red),),
//             ),
//           );
//         })
//     );
//   }
// }
class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${context.watch<Couter>().number}",
              style: const TextStyle(fontSize: 40.0),
            ),
            const Gap(30),
            ElevatedButton.icon(
              onPressed: () {
                context.read<Couter>().increment();
              },
              icon: const Icon(Icons.add),
              label: const Text("Increase"),
            ),
          ],
        )
    );
  }
}