// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreedListItem {
  String get breedName => throw _privateConstructorUsedError;
  List<String> get imagesUrl => throw _privateConstructorUsedError;
  bool get isSubBreed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BreedListItemCopyWith<BreedListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedListItemCopyWith<$Res> {
  factory $BreedListItemCopyWith(
          BreedListItem value, $Res Function(BreedListItem) then) =
      _$BreedListItemCopyWithImpl<$Res, BreedListItem>;
  @useResult
  $Res call({String breedName, List<String> imagesUrl, bool isSubBreed});
}

/// @nodoc
class _$BreedListItemCopyWithImpl<$Res, $Val extends BreedListItem>
    implements $BreedListItemCopyWith<$Res> {
  _$BreedListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedName = null,
    Object? imagesUrl = null,
    Object? isSubBreed = null,
  }) {
    return _then(_value.copyWith(
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      imagesUrl: null == imagesUrl
          ? _value.imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSubBreed: null == isSubBreed
          ? _value.isSubBreed
          : isSubBreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedListItemImplCopyWith<$Res>
    implements $BreedListItemCopyWith<$Res> {
  factory _$$BreedListItemImplCopyWith(
          _$BreedListItemImpl value, $Res Function(_$BreedListItemImpl) then) =
      __$$BreedListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String breedName, List<String> imagesUrl, bool isSubBreed});
}

/// @nodoc
class __$$BreedListItemImplCopyWithImpl<$Res>
    extends _$BreedListItemCopyWithImpl<$Res, _$BreedListItemImpl>
    implements _$$BreedListItemImplCopyWith<$Res> {
  __$$BreedListItemImplCopyWithImpl(
      _$BreedListItemImpl _value, $Res Function(_$BreedListItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedName = null,
    Object? imagesUrl = null,
    Object? isSubBreed = null,
  }) {
    return _then(_$BreedListItemImpl(
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      imagesUrl: null == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSubBreed: null == isSubBreed
          ? _value.isSubBreed
          : isSubBreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BreedListItemImpl implements _BreedListItem {
  const _$BreedListItemImpl(
      {required this.breedName,
      required final List<String> imagesUrl,
      this.isSubBreed = false})
      : _imagesUrl = imagesUrl;

  @override
  final String breedName;
  final List<String> _imagesUrl;
  @override
  List<String> get imagesUrl {
    if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesUrl);
  }

  @override
  @JsonKey()
  final bool isSubBreed;

  @override
  String toString() {
    return 'BreedListItem(breedName: $breedName, imagesUrl: $imagesUrl, isSubBreed: $isSubBreed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedListItemImpl &&
            (identical(other.breedName, breedName) ||
                other.breedName == breedName) &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl) &&
            (identical(other.isSubBreed, isSubBreed) ||
                other.isSubBreed == isSubBreed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breedName,
      const DeepCollectionEquality().hash(_imagesUrl), isSubBreed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedListItemImplCopyWith<_$BreedListItemImpl> get copyWith =>
      __$$BreedListItemImplCopyWithImpl<_$BreedListItemImpl>(this, _$identity);
}

abstract class _BreedListItem implements BreedListItem {
  const factory _BreedListItem(
      {required final String breedName,
      required final List<String> imagesUrl,
      final bool isSubBreed}) = _$BreedListItemImpl;

  @override
  String get breedName;
  @override
  List<String> get imagesUrl;
  @override
  bool get isSubBreed;
  @override
  @JsonKey(ignore: true)
  _$$BreedListItemImplCopyWith<_$BreedListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
