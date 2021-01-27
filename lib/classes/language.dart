class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;
  Language(this.id, this.name, this.flag,
      this.languageCode); //ถ้ามันทำมันจะประกาศตัวเเปล error

  static List<Language> languageList() {
    return <Language>[
      Language(1, '1', 'ภาษาไทย', 'th'),
      Language(2, '1', 'English', 'en'),
      Language(3, '1', '日本語', 'jp'),
      Language(4, '1', '中文', 'ch'),
      Language(5, '1', '한국어', 'ko'),
    ];
  }
}

class Index_number {
  final int ix;
  Index_number(this.ix);
}
