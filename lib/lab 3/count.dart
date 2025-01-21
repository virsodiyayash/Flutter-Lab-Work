Map<String , int> countWordOccurences(String sentence){
    Map<String , int> wordCountMap = {};

    List<String> words = sentence.split(' ');

    for(var word in words){
        wordCountMap[word] = (wordCountMap[word] ?? 0) + 1;
    }

    return wordCountMap;
}

void main(){
  String sentence = "this is a test this is a";

  Map<String , int> wordCounts = countWordOccurences(sentence);
  print(wordCounts);
}