// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shopping_list_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingListScreenState {
  List<ItemModel> get documents => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingListScreenStateCopyWith<ShoppingListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListScreenStateCopyWith<$Res> {
  factory $ShoppingListScreenStateCopyWith(ShoppingListScreenState value,
          $Res Function(ShoppingListScreenState) then) =
      _$ShoppingListScreenStateCopyWithImpl<$Res>;
  $Res call({List<ItemModel> documents, Status status, String? errorMessage});
}

/// @nodoc
class _$ShoppingListScreenStateCopyWithImpl<$Res>
    implements $ShoppingListScreenStateCopyWith<$Res> {
  _$ShoppingListScreenStateCopyWithImpl(this._value, this._then);

  final ShoppingListScreenState _value;
  // ignore: unused_field
  final $Res Function(ShoppingListScreenState) _then;

  @override
  $Res call({
    Object? documents = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShoppingListScreenStateCopyWith<$Res>
    implements $ShoppingListScreenStateCopyWith<$Res> {
  factory _$$_ShoppingListScreenStateCopyWith(_$_ShoppingListScreenState value,
          $Res Function(_$_ShoppingListScreenState) then) =
      __$$_ShoppingListScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemModel> documents, Status status, String? errorMessage});
}

/// @nodoc
class __$$_ShoppingListScreenStateCopyWithImpl<$Res>
    extends _$ShoppingListScreenStateCopyWithImpl<$Res>
    implements _$$_ShoppingListScreenStateCopyWith<$Res> {
  __$$_ShoppingListScreenStateCopyWithImpl(_$_ShoppingListScreenState _value,
      $Res Function(_$_ShoppingListScreenState) _then)
      : super(_value, (v) => _then(v as _$_ShoppingListScreenState));

  @override
  _$_ShoppingListScreenState get _value =>
      super._value as _$_ShoppingListScreenState;

  @override
  $Res call({
    Object? documents = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ShoppingListScreenState(
      documents: documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShoppingListScreenState implements _ShoppingListScreenState {
  _$_ShoppingListScreenState(
      {final List<ItemModel> documents = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _documents = documents;

  final List<ItemModel> _documents;
  @override
  @JsonKey()
  List<ItemModel> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ShoppingListScreenState(documents: $documents, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingListScreenState &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ShoppingListScreenStateCopyWith<_$_ShoppingListScreenState>
      get copyWith =>
          __$$_ShoppingListScreenStateCopyWithImpl<_$_ShoppingListScreenState>(
              this, _$identity);
}

abstract class _ShoppingListScreenState implements ShoppingListScreenState {
  factory _ShoppingListScreenState(
      {final List<ItemModel> documents,
      final Status status,
      final String? errorMessage}) = _$_ShoppingListScreenState;

  @override
  List<ItemModel> get documents;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingListScreenStateCopyWith<_$_ShoppingListScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
