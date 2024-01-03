class Quotes{
  String author;
  String quote;
  Quotes({required this.author, required this.quote});
}

List<Quotes> quotesValues = [
  Quotes(author: "Ugue", quote: "yesterday is history, today is a mistery, tomorrow is a gift thats why its called present."),
  Quotes(author: "mark", quote: "Life is too short to care about other peoples oppinions."),
];

void deleteValue({required String author}){
    for(Quotes value in quotesValues){
      if(value.author == author){
        quotesValues.remove(value);
      }
    }
}