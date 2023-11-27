import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../bloc/app/app_bloc.dart';

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class Api {
  Future getItems() async {
    final response = await http.get(Uri.parse(baseUrl+ '/todos'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future getItemById(id) async {
    final response = await http.get(Uri.parse('$baseUrl/todos/${id}'));
    print(json.decode(response.body));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

}