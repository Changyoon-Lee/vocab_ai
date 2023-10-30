import 'package:dart_openai/dart_openai.dart';

import 'package:autovocab/env/env.dart';

Future make_sentence(String word) async {
  // try {
  print("open ai api start");
  OpenAI.apiKey = Env.apiKey;

  OpenAIChatCompletionModel chatCompletion =
      await OpenAI.instance.chat.create(model: "gpt-3.5-turbo", messages: [
    OpenAIChatCompletionChoiceMessageModel(
      content: "make spoken language two sentence using \"$word\"",
      role: OpenAIChatMessageRole.user,
    )
  ]);
  print(chatCompletion.id);
  return chatCompletion.choices.first.message;
  // } catch (e) {
  //   return "error occurred: $e";
  // }
}
