// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Contact on _Contact, Store {
  Computed<String>? _$fullNameComputed;

  @override
  String get fullName => (_$fullNameComputed ??=
          Computed<String>(() => super.fullName, name: '_Contact.fullName'))
      .value;

  late final _$firstAtom = Atom(name: '_Contact.first', context: context);

  @override
  String get first {
    _$firstAtom.reportRead();
    return super.first;
  }

  @override
  set first(String value) {
    _$firstAtom.reportWrite(value, super.first, () {
      super.first = value;
    });
  }

  late final _$lastAtom = Atom(name: '_Contact.last', context: context);

  @override
  String get last {
    _$lastAtom.reportRead();
    return super.last;
  }

  @override
  set last(String value) {
    _$lastAtom.reportWrite(value, super.last, () {
      super.last = value;
    });
  }

  @override
  String toString() {
    return '''
first: ${first},
last: ${last},
fullName: ${fullName}
    ''';
  }
}
