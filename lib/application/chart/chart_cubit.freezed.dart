// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChartCubitStateTearOff {
  const _$ChartCubitStateTearOff();

// ignore: unused_element
  Preview preview() {
    return const Preview();
  }

// ignore: unused_element
  Tracking tracking(TrackingArgs tracking) {
    return Tracking(
      tracking,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChartCubitState = _$ChartCubitStateTearOff();

/// @nodoc
mixin _$ChartCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preview(),
    @required TResult tracking(TrackingArgs tracking),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preview(),
    TResult tracking(TrackingArgs tracking),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preview(Preview value),
    @required TResult tracking(Tracking value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preview(Preview value),
    TResult tracking(Tracking value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChartCubitStateCopyWith<$Res> {
  factory $ChartCubitStateCopyWith(
          ChartCubitState value, $Res Function(ChartCubitState) then) =
      _$ChartCubitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChartCubitStateCopyWithImpl<$Res>
    implements $ChartCubitStateCopyWith<$Res> {
  _$ChartCubitStateCopyWithImpl(this._value, this._then);

  final ChartCubitState _value;
  // ignore: unused_field
  final $Res Function(ChartCubitState) _then;
}

/// @nodoc
abstract class $PreviewCopyWith<$Res> {
  factory $PreviewCopyWith(Preview value, $Res Function(Preview) then) =
      _$PreviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreviewCopyWithImpl<$Res> extends _$ChartCubitStateCopyWithImpl<$Res>
    implements $PreviewCopyWith<$Res> {
  _$PreviewCopyWithImpl(Preview _value, $Res Function(Preview) _then)
      : super(_value, (v) => _then(v as Preview));

  @override
  Preview get _value => super._value as Preview;
}

/// @nodoc
class _$Preview implements Preview {
  const _$Preview();

  @override
  String toString() {
    return 'ChartCubitState.preview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Preview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preview(),
    @required TResult tracking(TrackingArgs tracking),
  }) {
    assert(preview != null);
    assert(tracking != null);
    return preview();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preview(),
    TResult tracking(TrackingArgs tracking),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preview != null) {
      return preview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preview(Preview value),
    @required TResult tracking(Tracking value),
  }) {
    assert(preview != null);
    assert(tracking != null);
    return preview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preview(Preview value),
    TResult tracking(Tracking value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preview != null) {
      return preview(this);
    }
    return orElse();
  }
}

abstract class Preview implements ChartCubitState {
  const factory Preview() = _$Preview;
}

/// @nodoc
abstract class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) then) =
      _$TrackingCopyWithImpl<$Res>;
  $Res call({TrackingArgs tracking});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res> extends _$ChartCubitStateCopyWithImpl<$Res>
    implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(Tracking _value, $Res Function(Tracking) _then)
      : super(_value, (v) => _then(v as Tracking));

  @override
  Tracking get _value => super._value as Tracking;

  @override
  $Res call({
    Object tracking = freezed,
  }) {
    return _then(Tracking(
      tracking == freezed ? _value.tracking : tracking as TrackingArgs,
    ));
  }
}

/// @nodoc
class _$Tracking implements Tracking {
  const _$Tracking(this.tracking) : assert(tracking != null);

  @override
  final TrackingArgs tracking;

  @override
  String toString() {
    return 'ChartCubitState.tracking(tracking: $tracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tracking &&
            (identical(other.tracking, tracking) ||
                const DeepCollectionEquality()
                    .equals(other.tracking, tracking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tracking);

  @override
  $TrackingCopyWith<Tracking> get copyWith =>
      _$TrackingCopyWithImpl<Tracking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preview(),
    @required TResult tracking(TrackingArgs tracking),
  }) {
    assert(preview != null);
    assert(tracking != null);
    return tracking(this.tracking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preview(),
    TResult tracking(TrackingArgs tracking),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tracking != null) {
      return tracking(this.tracking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preview(Preview value),
    @required TResult tracking(Tracking value),
  }) {
    assert(preview != null);
    assert(tracking != null);
    return tracking(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preview(Preview value),
    TResult tracking(Tracking value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tracking != null) {
      return tracking(this);
    }
    return orElse();
  }
}

abstract class Tracking implements ChartCubitState {
  const factory Tracking(TrackingArgs tracking) = _$Tracking;

  TrackingArgs get tracking;
  $TrackingCopyWith<Tracking> get copyWith;
}
