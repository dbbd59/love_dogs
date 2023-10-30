// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_match_dog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomMatchDog {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get breed => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  bool get potentialMatch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomMatchDogCopyWith<RandomMatchDog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomMatchDogCopyWith<$Res> {
  factory $RandomMatchDogCopyWith(
          RandomMatchDog value, $Res Function(RandomMatchDog) then) =
      _$RandomMatchDogCopyWithImpl<$Res, RandomMatchDog>;
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      String breed,
      double distance,
      bool potentialMatch});
}

/// @nodoc
class _$RandomMatchDogCopyWithImpl<$Res, $Val extends RandomMatchDog>
    implements $RandomMatchDogCopyWith<$Res> {
  _$RandomMatchDogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? breed = null,
    Object? distance = null,
    Object? potentialMatch = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      potentialMatch: null == potentialMatch
          ? _value.potentialMatch
          : potentialMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomMatchDogImplCopyWith<$Res>
    implements $RandomMatchDogCopyWith<$Res> {
  factory _$$RandomMatchDogImplCopyWith(_$RandomMatchDogImpl value,
          $Res Function(_$RandomMatchDogImpl) then) =
      __$$RandomMatchDogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      String breed,
      double distance,
      bool potentialMatch});
}

/// @nodoc
class __$$RandomMatchDogImplCopyWithImpl<$Res>
    extends _$RandomMatchDogCopyWithImpl<$Res, _$RandomMatchDogImpl>
    implements _$$RandomMatchDogImplCopyWith<$Res> {
  __$$RandomMatchDogImplCopyWithImpl(
      _$RandomMatchDogImpl _value, $Res Function(_$RandomMatchDogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? breed = null,
    Object? distance = null,
    Object? potentialMatch = null,
  }) {
    return _then(_$RandomMatchDogImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      potentialMatch: null == potentialMatch
          ? _value.potentialMatch
          : potentialMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RandomMatchDogImpl implements _RandomMatchDog {
  const _$RandomMatchDogImpl(
      {required this.name,
      required this.imageUrl,
      required this.breed,
      required this.distance,
      required this.potentialMatch});

  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String breed;
  @override
  final double distance;
  @override
  final bool potentialMatch;

  @override
  String toString() {
    return 'RandomMatchDog(name: $name, imageUrl: $imageUrl, breed: $breed, distance: $distance, potentialMatch: $potentialMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomMatchDogImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.potentialMatch, potentialMatch) ||
                other.potentialMatch == potentialMatch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, imageUrl, breed, distance, potentialMatch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomMatchDogImplCopyWith<_$RandomMatchDogImpl> get copyWith =>
      __$$RandomMatchDogImplCopyWithImpl<_$RandomMatchDogImpl>(
          this, _$identity);
}

abstract class _RandomMatchDog implements RandomMatchDog {
  const factory _RandomMatchDog(
      {required final String name,
      required final String imageUrl,
      required final String breed,
      required final double distance,
      required final bool potentialMatch}) = _$RandomMatchDogImpl;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get breed;
  @override
  double get distance;
  @override
  bool get potentialMatch;
  @override
  @JsonKey(ignore: true)
  _$$RandomMatchDogImplCopyWith<_$RandomMatchDogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
