import 'package:flutter/material.dart';

class SideAppDrawer extends StatelessWidget {
  const SideAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        color: Theme.of(context).colorScheme.secondary,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "+917992482690",
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                const ListTile(
                  title: Text("Home"),
                ),
                ListTile(
                    title: const Text("My Cart"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right_outlined))),
                ListTile(
                  onTap: () {
                    // Scaffold.of(context).closeDrawer();
                    // Navigator.of(context).pushNamed('/allcategoriessection');
                  },
                  title: const Text("Shop By Category"),
                  trailing: IconButton(
                      onPressed: () {
                        // Scaffold.of(context).closeDrawer();
                        // bloc.add(FetchAllCategories());
                      },
                      icon: const Icon(Icons.arrow_right_outlined)),
                ),
                ListTile(
                  title: const Text("Offers"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right_outlined)),
                ),
                ListTile(
                  title: const Text("Customer Service"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right_outlined)),
                ),
                ListTile(
                  title: const Text("Sell Product"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right_outlined)),
                ),
                ListTile(
                  title: const Text("Seller"),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("seller");
                      },
                      icon: const Icon(Icons.arrow_right_outlined)),
                ),
                ListTile(
                  title: const Text("Location Service"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right_outlined)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
