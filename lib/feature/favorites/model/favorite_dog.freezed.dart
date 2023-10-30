// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_dog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteDog {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteDogCopyWith<FavoriteDog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteDogCopyWith<$Res> {
  factory $FavoriteDogCopyWith(
          FavoriteDog value, $Res Function(FavoriteDog) then) =
      _$FavoriteDogCopyWithImpl<$Res, FavoriteDog>;
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class _$FavoriteDogCopyWithImpl<$Res, $Val extends FavoriteDog>
    implements $FavoriteDogCopyWith<$Res> {
  _$FavoriteDogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteDogImplCopyWith<$Res>
    implements $FavoriteDogCopyWith<$Res> {
  factory _$$FavoriteDogImplCopyWith(
          _$FavoriteDogImpl value, $Res Function(_$FavoriteDogImpl) then) =
      __$$FavoriteDogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class __$$FavoriteDogImplCopyWithImpl<$Res>
    extends _$FavoriteDogCopyWithImpl<$Res, _$FavoriteDogImpl>
    implements _$$FavoriteDogImplCopyWith<$Res> {
  __$$FavoriteDogImplCopyWithImpl(
      _$FavoriteDogImpl _value, $Res Function(_$FavoriteDogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$FavoriteDogImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteDogImpl implements _FavoriteDog {
  const _$FavoriteDogImpl({required this.name, required this.imageUrl});

  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FavoriteDog(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteDogImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteDogImplCopyWith<_$FavoriteDogImpl> get copyWith =>
      __$$FavoriteDogImplCopyWithImpl<_$FavoriteDogImpl>(this, _$identity);
}

abstract class _FavoriteDog implements FavoriteDog {
  const factory _FavoriteDog(
      {required final String name,
      required final String imageUrl}) = _$FavoriteDogImpl;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteDogImplCopyWith<_$FavoriteDogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
