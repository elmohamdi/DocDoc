// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SpecializationLoading value)?  specializationLoading,TResult Function( _SpecializationSuccess value)?  specializationSuccess,TResult Function( _SpecializationError value)?  specializationError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case _SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case _SpecializationError() when specializationError != null:
return specializationError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SpecializationLoading value)  specializationLoading,required TResult Function( _SpecializationSuccess value)  specializationSuccess,required TResult Function( _SpecializationError value)  specializationError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SpecializationLoading():
return specializationLoading(_that);case _SpecializationSuccess():
return specializationSuccess(_that);case _SpecializationError():
return specializationError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SpecializationLoading value)?  specializationLoading,TResult? Function( _SpecializationSuccess value)?  specializationSuccess,TResult? Function( _SpecializationError value)?  specializationError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case _SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case _SpecializationError() when specializationError != null:
return specializationError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationLoading,TResult Function( SpecializationsResponseModel specializationsResponseModel)?  specializationSuccess,TResult Function( ErrorHandler errorHandler)?  specializationError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SpecializationLoading() when specializationLoading != null:
return specializationLoading();case _SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsResponseModel);case _SpecializationError() when specializationError != null:
return specializationError(_that.errorHandler);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationLoading,required TResult Function( SpecializationsResponseModel specializationsResponseModel)  specializationSuccess,required TResult Function( ErrorHandler errorHandler)  specializationError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SpecializationLoading():
return specializationLoading();case _SpecializationSuccess():
return specializationSuccess(_that.specializationsResponseModel);case _SpecializationError():
return specializationError(_that.errorHandler);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationLoading,TResult? Function( SpecializationsResponseModel specializationsResponseModel)?  specializationSuccess,TResult? Function( ErrorHandler errorHandler)?  specializationError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SpecializationLoading() when specializationLoading != null:
return specializationLoading();case _SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsResponseModel);case _SpecializationError() when specializationError != null:
return specializationError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _SpecializationLoading implements HomeState {
  const _SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationLoading()';
}


}




/// @nodoc


class _SpecializationSuccess implements HomeState {
  const _SpecializationSuccess(this.specializationsResponseModel);
  

 final  SpecializationsResponseModel specializationsResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecializationSuccessCopyWith<_SpecializationSuccess> get copyWith => __$SpecializationSuccessCopyWithImpl<_SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationSuccess&&(identical(other.specializationsResponseModel, specializationsResponseModel) || other.specializationsResponseModel == specializationsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,specializationsResponseModel);

@override
String toString() {
  return 'HomeState.specializationSuccess(specializationsResponseModel: $specializationsResponseModel)';
}


}

/// @nodoc
abstract mixin class _$SpecializationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SpecializationSuccessCopyWith(_SpecializationSuccess value, $Res Function(_SpecializationSuccess) _then) = __$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationsResponseModel specializationsResponseModel
});




}
/// @nodoc
class __$SpecializationSuccessCopyWithImpl<$Res>
    implements _$SpecializationSuccessCopyWith<$Res> {
  __$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final _SpecializationSuccess _self;
  final $Res Function(_SpecializationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationsResponseModel = null,}) {
  return _then(_SpecializationSuccess(
null == specializationsResponseModel ? _self.specializationsResponseModel : specializationsResponseModel // ignore: cast_nullable_to_non_nullable
as SpecializationsResponseModel,
  ));
}


}

/// @nodoc


class _SpecializationError implements HomeState {
  const _SpecializationError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecializationErrorCopyWith<_SpecializationError> get copyWith => __$SpecializationErrorCopyWithImpl<_SpecializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.specializationError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class _$SpecializationErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SpecializationErrorCopyWith(_SpecializationError value, $Res Function(_SpecializationError) _then) = __$SpecializationErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class __$SpecializationErrorCopyWithImpl<$Res>
    implements _$SpecializationErrorCopyWith<$Res> {
  __$SpecializationErrorCopyWithImpl(this._self, this._then);

  final _SpecializationError _self;
  final $Res Function(_SpecializationError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(_SpecializationError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
