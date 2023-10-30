import 'dart:math';

List<String> dogName = [
  'Max',
  'Bella',
  'Rocky',
  'Lucy',
  'Bailey',
  'Charlie',
  'Daisy',
  'Buddy',
  'Luna',
  'Milo',
  'Sadie',
  'Duke',
  'Ruby',
  'Oliver',
  'Rosie',
  'Bear',
  'Lily',
  'Tucker',
  'Zoe',
  'Leo',
];

List<double> distances = [
  12,
  67,
  43,
  28,
  53,
  19,
  76,
  36,
  64,
  31,
  57,
  22,
  48,
  14,
  71,
  39,
  59,
  25,
  82,
  45,
];

String getRandomDogName() {
  return dogName[Random().nextInt(dogName.length)];
}

double getRandomDistance() {
  return distances[Random().nextInt(distances.length)];
}

String extractBreedFromUrl(String url) {
  final parts = url.split('/');
  if (parts.length >= 6) {
    return transformToTitleCase(parts[4]);
  } else {
    return 'Breed not found';
  }
}

String transformToTitleCase(String input) {
  final words = input.split('-');
  for (var i = 0; i < words.length; i++) {
    words[i] = words[i][0].toUpperCase() + words[i].substring(1);
  }
  return words.join(' ');
}

bool generateRandomBool() {
  final random = Random();
  return random.nextBool();
}
