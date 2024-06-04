import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();
  final _storage = GetStorage();

  // Generic method to save the data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read the data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Method to remove the data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Method to clear all data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}