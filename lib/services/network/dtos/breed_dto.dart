class BreedDto {
  BreedDto(this.name, {this.isSubBreed = false, this.breedParent});

  bool? isSubBreed;
  final String name;
  final String? breedParent;
}
