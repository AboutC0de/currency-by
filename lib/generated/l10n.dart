// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S current;

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();

      return S.current;
    });
  }

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Currency BY`
  String get appTitle {
    return Intl.message(
      'Currency BY',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Курсы валют`
  String get currency {
    return Intl.message(
      'Курсы валют',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `изменить`
  String get edit {
    return Intl.message(
      'изменить',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `НБРБ`
  String get nb {
    return Intl.message(
      'НБРБ',
      name: 'nb',
      desc: '',
      args: [],
    );
  }

  /// `БВФБ`
  String get bcse {
    return Intl.message(
      'БВФБ',
      name: 'bcse',
      desc: '',
      args: [],
    );
  }

  /// `Продать`
  String get sell {
    return Intl.message(
      'Продать',
      name: 'sell',
      desc: '',
      args: [],
    );
  }

  /// `Купить`
  String get buy {
    return Intl.message(
      'Купить',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `1Н`
  String get oneWeek {
    return Intl.message(
      '1Н',
      name: 'oneWeek',
      desc: '',
      args: [],
    );
  }

  /// `1М`
  String get oneMonth {
    return Intl.message(
      '1М',
      name: 'oneMonth',
      desc: '',
      args: [],
    );
  }

  /// `3М`
  String get threeMonth {
    return Intl.message(
      '3М',
      name: 'threeMonth',
      desc: '',
      args: [],
    );
  }

  /// `6М`
  String get sixMonth {
    return Intl.message(
      '6М',
      name: 'sixMonth',
      desc: '',
      args: [],
    );
  }

  /// `1Г`
  String get oneYear {
    return Intl.message(
      '1Г',
      name: 'oneYear',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}
