import 'package:injectable/injectable.dart';
import 'package:love_dogs/feature/breeds/model/breed_list_item.dart';

@injectable
class BreedsRepo {
  Future<List<BreedListItem>> getDogBreeds() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      const BreedListItem(
        breedName: 'Breed 1',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 2',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 3',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 1',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 2',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 3',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 1',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 2',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 3',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 1',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 2',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 3',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 1',
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 2',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
      const BreedListItem(
        breedName: 'Breed 3',
        isSubBreed: true,
        imagesUrl: [
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
          'http://placekitten.com/200/300',
        ],
      ),
    ];
  }
}
