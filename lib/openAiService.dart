import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sprachassistent/MyOpenAiKey.dart';

class OpenAiService {
  final List<Map<String, String>> messages = [];

  Future<String> chatGPT(String prompt) async {
    messages.add({
      'role': 'user',
      'content': prompt,
    });
    try {
      final response = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $openAIKey'
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              "role": "user",
              "content": "$prompt",
            }
          ],
        }),
      );
      print(response.body);
      if (response.statusCode == 200) {
        String contente =
            jsonDecode(response.body)['choices'][0]['message']['content'];
        contente = utf8.decode(contente.trim().runes.toList());
        //print(contente);
        messages.add({
          'role': 'assistant',
          'content': contente,
        });
        return contente;
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }
}
