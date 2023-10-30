import 'package:dart_openai/dart_openai.dart';

Future make_sentence(word) async {
  try {
    OpenAI.apiKey = "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";

    OpenAIChatCompletionModel chatCompletion =
        await OpenAI.instance.chat.create(model: "gpt-3.5-turbo", messages: [
      OpenAIChatCompletionChoiceMessageModel(
        content: "make colloquial two sentence using \"$word\"",
        role: OpenAIChatMessageRole.user,
      )
    ]);
    print(chatCompletion.id);
    print(chatCompletion.choices.first.message);
    return chatCompletion.choices.first.message;
  } catch (e) {
    return "error occurred: $e";
  }
}

void main() async {
  await make_sentence("hello");
}
