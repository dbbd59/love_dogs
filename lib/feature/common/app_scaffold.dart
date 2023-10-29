import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final indexedPage = IndexedPage.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                'https://lh3.googleusercontent.com/pw/ADCreHeVTUDzY74UeOwksWp9H471yzHklIgv-nXye-AbsAaC-Cof8iYseQ3wT-Yh5UEp5ns9j6qomRyuQ4t2MjjQImkTJLhc-dZ1vndTw5HrDG5sdV2YWLWpLFn9-LxgHM7R5tUKPHkydgKlevdPJp2JLmP0NU7tupWEl6jULT_-KwIM6HktxXgLQu5hxbvGqqjjRdb7VlWA8VAhHiWfoGa7EFU2y5L4fXkFUaGY1xPSwy5vrBi4wlCm_dOHeNbQkChIjyoLU4t5g5JuVT5zWpMRZWhpPDMQkO4HOt4mSL6TsrlBTN20i5mDginqcjQ17RRSSQtVnsTyIsA2uLToDZRlnLGuOjPPT9z2hyYTm4_399GqNWTcMpWzQso3V_760fLoZhD0leppV0Hu6mEoVOOU_dejmdZzH1X87hpFFB5VjdUvi2kT45IXADSL0MgKxWAWNTb7WmBfIAGObCOpBTjCHAWb5C3PMO_dER3LjjX8OXstCRIr7gLz8GEX87S_tqM7Ng_NUGrMlMlvE79SzfWIQifwvLbg8zi5gA_U1mXIuUuvULD77w02wn-F9oejqbYMCH4XA187wQ7LrVkQKtGJuDQygHfeCSPE5M102D52ZYdaU6sOwhugaG60kmGkYvm27sY5IxFdFhWx0rUYmqhntadT3VRat7MQA5DFqYD3Cae3DA0QyugY7yYdCz21ida3-3AoAirCb2Yx1yA9gNNk96IFFkb0Alc7tCxcDEHqKII5LVr90H9oCp26vo9oy4f6BUXz945mB1Av5P35pijHi5GpjE8PV_Tfqs_z7vUwZG8SyCAsB358K_85bkHBSENwRaygnKsxXo6j0Pl4jNeyRIYwJZSfMg-V6KNBnu0qGlGgMWn-fkvw_ePBUiJIO3heboTOXz1gAF-6yM6Rt4Sghfze1bG6dgXmcWeGXMzb5MZBLSB7-oLKstDH=w279-h174-no?authuser=0',
                height: 32.0,
                width: 32.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Text(
              'Love Dogs',
            ),
          ],
        ),
      ),
      body: PageStackNavigator(
        stack: indexedPage.currentStack,
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (int index) {
          indexedPage.index = index;
        },
        selectedIndex: indexedPage.index,
        destinations: <Widget>[
          const NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Random Match',
          ),
          const NavigationDestination(
            icon: Icon(Icons.list_rounded),
            label: 'Breeds',
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
