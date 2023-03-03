/// [BookSection], groups books as desired.
/// - parameters
///   - id
///   - label
class BookSection {
  final String id;
  final String label;

  BookSection({required this.id, required this.label});

  static List<BookSection> dummies = <BookSection>[
    BookSection(id: "0", label: "Books 2022"),
    BookSection(id: "1", label: "Mystery & Thriller"),
    BookSection(id: "2", label: "Memoir & Autobiography"),
    BookSection(id: "3", label: "History & Biography"),
    BookSection(id: "4", label: "Young Adult Fantasy & Science Fiction"),
    BookSection(id: "5", label: "Middle Grade & Children's"),
    BookSection(id: "6", label: "Science Fiction"),
    BookSection(id: "7", label: "Nonfiction"),
    BookSection(id: "8", label: "Historical Fiction"),
  ];
}

///   - id:  Used to identify each `Books` object.
///   - bookSectionId: Used to associate with a `BookSection` object.
///   - bookIds: Contains the unique `id` values of `Book` objects. This property can be used
/// to fetch books.
class Books {
  /// Used to identify each `Books` object.
  final String id;

  /// Used to associate with a `BookSection` object.
  final String? parentId;

  /// Contains the unique `id` values of `Book` objects. This property can be used
  /// to fetch books.
  final List<String> bookIds;

  const Books({
    required this.id,
    this.parentId,
    this.bookIds = const [],
  });

  static const List<Books> dummies = <Books>[
    Books(id: "0", parentId: "0", bookIds: [
      "0",
      "1",
      '2',
      '3',
      '4',
      '5',
    ]),
    Books(id: "1", parentId: "1", bookIds: [
      "6",
      "7",
      '8',
      '9',
      '10',
      '11',
    ]),
    Books(id: "2", parentId: "2", bookIds: [
      "12",
      "13",
      '14',
      '15',
      '16',
      '17',
    ]),
    Books(id: "3", parentId: "3", bookIds: [
      "18",
      "1",
      '2',
      '3',
      '4',
      '5',
    ]),
    Books(id: "4", parentId: "4", bookIds: [
      "6",
      "7",
      '8',
      '9',
      '10',
      '11',
    ]),
    Books(id: "5", parentId: "5", bookIds: [
      "12",
      "13",
      '14',
      '15',
      '16',
      '17',
    ]),
    Books(id: "6", parentId: "6", bookIds: [
      "18",
      "1",
      '2',
      '3',
      '4',
      '5',
    ]),
    Books(id: "7", parentId: "7", bookIds: [
      "6",
      "7",
      '8',
      '9',
      '10',
      '11',
    ]),
    Books(id: "8", parentId: "8", bookIds: [
      "12",
      "13",
      '14',
      '15',
      '16',
      '17',
    ]),
    Books(id: "9", parentId: "rb", bookIds: [
      "1",
      '2',
      '3',
      '4',
      '5',
      "6",
      "7",
      '8',
      '9',
      '10',
      '11',
      "12",
      "13",
      '14',
      '15',
      '16',
      '17',
      '18',
    ]),
    Books(id: "9", parentId: "ctr", bookIds: [
      "18",
      "1",
      '2',
      '3',
      '4',
      '5',
    ]),
  ];
}

class Book {
  final String? id;
  final String title;
  final int numberOfPages;
  final String description;
  final String? imageUrl;

  @override
  String toString() => "Book id:$id, title: $title";

  Book({
    this.id,
    this.numberOfPages = 0,
    this.title = "",
    this.description = '',
    this.imageUrl,
  });
  static List<Book> dummies = <Book>[
    Book(
      id: "0",
      title: "Ataturk Nutuk",
      numberOfPages: 616,
      description:
          'Elit sint dolore ullamco nulla adipisicing Lorem nulla qui nulla eu sit nostrud amet. Excepteur Lorem excepteur Lorem fugiat culpa. Sit mollit ullamco eiusmod velit duis magna Lorem Lorem. Consequat ipsum est adipisicing ea aute elit. Id mollit tempor sunt anim irure esse excepteur. Excepteur nostrud sint ea esse Lorem minim adipisicing in veniam labore in proident fugiat qui.',
      imageUrl:
          "https://m.media-amazon.com/images/I/41-BGQaEFbL._AC_SY300_.jpg",
    ),
    Book(
      id: "1",
      title: "It Start With Us",
      numberOfPages: 332,
      description:
          'Ex tempor elit proident ut reprehenderit laborum pariatur dolore excepteur id laboris deserunt culpa. Dolore consectetur aliqua id anim dolore. Occaecat ea dolor ad amet et laborum cupidatat nulla ea fugiat officia cupidatat. Ea nostrud ea occaecat cupidatat deserunt ea ea exercitation.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71PNGYHykrL._AC_SY300_.jpg",
    ),
    Book(
      id: "2",
      title:
          "Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones",
      numberOfPages: 319,
      description:
          'Sit voluptate quis est consequat do duis cupidatat. Anim reprehenderit ea et mollit consequat aliqua excepteur laboris voluptate. In dolor irure sint amet cupidatat dolore qui reprehenderit officia adipisicing magna est. Elit aute proident consequat minim consequat. Esse duis sunt ea sit veniam aliquip qui ad tempor deserunt non cillum veniam est. Velit ullamco veniam ullamco veniam aute sit nostrud sit ut anim culpa consectetur. Consectetur adipisicing anim exercitation nostrud.',
      imageUrl:
          "https://m.media-amazon.com/images/I/81bGKUa1e0L._AC_SY300_.jpg",
    ),
    Book(
      id: "3",
      title: "Spare",
      numberOfPages: 409,
      description:
          'Ipsum commodo do culpa labore ex deserunt proident magna Lorem non dolore ea dolore. Lorem consectetur sunt aliquip laborum tempor do. Duis Lorem sint occaecat officia laboris dolor. Do occaecat reprehenderit nulla eu fugiat pariatur dolor duis est adipisicing proident.',
      imageUrl:
          "https://m.media-amazon.com/images/I/91Szm8FpdfL._AC_SY300_.jpg",
    ),
    Book(
      id: "4",
      title: "Lessons in Chmistry",
      numberOfPages: 394,
      description:
          'Fugiat fugiat ad enim eiusmod ex id. Commodo fugiat ut consectetur mollit nulla cupidatat non consectetur laboris laborum cupidatat culpa. Ullamco occaecat in laborum ea culpa ullamco ad aliqua enim aliqua. Amet exercitation aliquip veniam veniam enim nostrud excepteur laborum tempor.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71yNgTMEcpL._AC_SY300_.jpg",
    ),
    Book(
      id: "5",
      title: "8 Rules of Love: How to Find It, Keep It, and Let It Go",
      numberOfPages: 319,
      description:
          'Laboris fugiat Lorem nisi proident do eiusmod ullamco magna elit magna et fugiat. Adipisicing incididunt magna nisi enim incididunt nisi ea aliqua eu laboris. Excepteur reprehenderit duis irure sint Lorem proident incididunt et incididunt ea laborum enim minim quis. Id et eu ad sunt irure. Ea ullamco culpa do sunt culpa irure culpa cupidatat. Irure ad pariatur nisi do commodo aliquip esse.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71FI7MAeUcL._AC_SY300_.jpg",
    ),
    Book(
      id: "6",
      title: "Verity",
      numberOfPages: 333,
      description:
          'Laborum irure sit velit ut. Quis aliqua dolor esse veniam tempor laborum incididunt et non dolor. Irure fugiat esse magna incididunt officia laborum elit ut amet.',
      imageUrl:
          "https://m.media-amazon.com/images/I/41ZLnc34EiL._AC_SY300_.jpg",
    ),
    Book(
      id: "7",
      title:
          "The Body Keeps the Score: Brain, Mind, and Body in the Healing of Trauma",
      numberOfPages: 645,
      description:
          'Tempor dolore adipisicing ad laborum quis adipisicing magna exercitation veniam. Dolor velit officia magna quis proident duis. Occaecat ad in ad dolor. Tempor dolore do exercitation ullamco officia commodo. Aliquip commodo irure mollit ad nulla sunt ut eiusmod dolor voluptate duis elit eiusmod.',
      imageUrl:
          "https://m.media-amazon.com/images/I/61NdJMwAThS._AC_SY300_.jpg",
    ),
    Book(
      id: "8",
      title: "If He Had Been With Me",
      numberOfPages: 338,
      description:
          'Veniam id in sunt incididunt ullamco tempor enim. Ad non excepteur labore laborum mollit esse esse nisi enim proident consequat est et. Aliquip veniam ea adipisicing sunt anim ea veniam pariatur magna aliqua Lorem. Laboris deserunt veniam proident aliqua id id amet dolore ea et ea qui consectetur proident. Duis enim ea deserunt ea cillum incididunt.',
      imageUrl:
          "https://m.media-amazon.com/images/I/81GNCzI3CJL._AC_SY300_.jpg",
    ),
    Book(
      id: "9",
      title: "The Seven Husbands of Evelyn Hugo: A Novel",
      numberOfPages: 398,
      description:
          'Veniam adipisicing ullamco minim eiusmod ea ex occaecat sunt labore minim duis ad consequat laboris. Aliquip occaecat ad mollit consectetur eu velit nulla. Et irure reprehenderit consectetur ut anim duis ea enim qui nisi exercitation tempor eiusmod sit. Sint voluptate veniam cupidatat aute voluptate occaecat eu sint laborum cillum. Ipsum officia fugiat aliqua minim labore ut. Eu do ea qui eiusmod culpa aute consequat ad nostrud aute ea eu adipisicing. Ea cupidatat elit elit irure.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71ZvnK+4JiL._AC_SY1080_.jpg",
    ),
    Book(
      id: "10",
      title: "LLama LLama I Love You",
      numberOfPages: 14,
      description:
          'Do ipsum elit tempor aliquip ut consequat amet qui elit commodo cupidatat qui aute. Amet est proident Lorem fugiat id sunt sint reprehenderit pariatur officia qui pariatur officia occaecat. In magna culpa velit do elit excepteur quis est irure culpa aute et ullamco.',
      imageUrl:
          "https://m.media-amazon.com/images/I/914vhlOWl4L._AC_SY300_.jpg",
    ),
    Book(
      id: "11",
      title: "Never Give an Inch: Fighting for the America I Love",
      numberOfPages: 464,
      description:
          'Dolore magna Lorem aliqua irure ea est reprehenderit quis velit ut sit nulla. Excepteur laboris pariatur enim magna incididunt aliqua exercitation aute. Commodo minim Lorem ea duis aliqua sint amet amet et ex. Ipsum fugiat eiusmod cupidatat anim aliqua aliquip sint nisi dolore id tempor et elit. Duis voluptate laborum voluptate tempor anim magna mollit fugiat consectetur. Aute culpa pariatur aute incididunt adipisicing officia officia proident deserunt ex nisi voluptate. Nulla nostrud Lorem consectetur reprehenderit deserunt reprehenderit tempor exercitation ullamco reprehenderit ad consectetur et.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71XS8x7ykIL._AC_SY300_.jpg",
    ),
    Book(
      id: "12",
      title:
          "Harvey The Heart Had Too Many Farts: A Rhyming Read Aloud Story Book For Kids And Adults About Farting and Friendship, A Valentine's Day Gift For Boys ... (Fart Dictionaries and Toot Along Stories)",
      numberOfPages: 37,
      description:
          'Pariatur do eiusmod elit incididunt irure occaecat tempor ex anim incididunt. Aliqua tempor id sit cillum exercitation consequat consectetur enim nulla adipisicing minim nisi exercitation. Reprehenderit commodo nisi cupidatat ad deserunt voluptate aute fugiat excepteur aute incididunt enim. Mollit veniam mollit sit dolore aute voluptate dolor eu est do esse.',
      imageUrl:
          "https://m.media-amazon.com/images/I/51JfI7lIHvL._AC_SY300_.jpg",
    ),
    Book(
      id: "13",
      title: "Reminders of Him: A Novel",
      numberOfPages: 335,
      description:
          'Irure laborum enim veniam non occaecat cupidatat. Velit non irure consequat aliqua. Lorem deserunt cupidatat nulla reprehenderit esse do aute esse commodo Lorem culpa. Eiusmod culpa esse nostrud nisi amet fugiat aliquip dolore velit cillum esse in ipsum. Pariatur cillum adipisicing eu sit ex sunt laboris. Aliquip eiusmod nulla esse eiusmod aliqua nulla id anim excepteur ea minim proident.',
      imageUrl:
          "https://m.media-amazon.com/images/I/617uZq23IPL._AC_SY300_.jpg",
    ),
    Book(
      id: "14",
      title: "Ugly Love: A Novel",
      numberOfPages: 336,
      description:
          'Sint incididunt qui mollit eiusmod aute anim duis sit eu et fugiat culpa dolor cillum. Est nostrud ad incididunt incididunt in enim excepteur esse. Deserunt velit voluptate aute ex ad sint elit. Ea sunt incididunt aliqua velit est ad. Voluptate sint sit amet in velit exercitation velit adipisicing amet mollit sunt labore Lorem ipsum. Aute officia in qui aliquip reprehenderit irure voluptate ullamco sit commodo aute.',
      imageUrl:
          "https://m.media-amazon.com/images/I/71E8VNPC1dL._AC_SY300_.jpg",
    ),
    Book(
      id: "15",
      title: "The Four Agreements",
      numberOfPages: 160,
      description:
          'Quis in et veniam non ex voluptate fugiat ad consequat cillum duis. Laboris in dolor in ex eu aute. Duis aute adipisicing ex voluptate aute. Tempor id consequat nulla eu amet in reprehenderit Lorem veniam. Consequat do ex aliqua aliqua pariatur aliquip velit ex sunt exercitation ipsum. Aliqua cillum aute et dolore aliqua nulla amet aliqua in ea incididunt deserunt dolor ex. Incididunt minim commodo duis eiusmod nostrud id officia do cupidatat.',
      imageUrl:
          "https://m.media-amazon.com/images/I/81hHy5XrdKL._AC_SY300_.jpg",
    ),
    Book(
      id: "16",
      title: "The Silent Patient",
      numberOfPages: 336,
      description:
          'Non exercitation elit aute sit elit dolore mollit aute. Tempor amet dolor dolor anim aute nostrud ut nulla sint ut veniam reprehenderit commodo reprehenderit. Nostrud laboris dolor occaecat ut laborum nisi consectetur enim exercitation enim laborum non consequat. Qui aliqua mollit duis Lorem cupidatat nisi consequat sunt non sit nulla. Dolor dolor aute reprehenderit deserunt consequat et cupidatat qui laborum voluptate id ea sunt enim. Eu proident occaecat aliquip ex ullamco laborum. Ut sint cillum quis dolor deserunt ex occaecat reprehenderit ut do.',
      imageUrl:
          "https://m.media-amazon.com/images/I/91BbLCJOruL._AC_SY300_.jpg",
    ),
    Book(
      id: "17",
      title: "Rich Dad Poor Dad",
      numberOfPages: 336,
      description:
          'Incididunt enim voluptate consectetur cupidatat fugiat. Amet do et aute eu fugiat nulla do magna in amet culpa anim ad. Eiusmod ullamco esse enim quis do ea excepteur veniam nulla irure nisi aute irure. Ipsum labore proident officia ut ea pariatur anim consectetur proident sit. Ex veniam esse aliquip reprehenderit fugiat et veniam fugiat quis dolore anim mollit mollit. Consequat minim dolore officia quis voluptate. Dolore sint sit amet in nulla aute sunt enim sunt enim nisi.',
      imageUrl:
          "https://m.media-amazon.com/images/I/81PuKheA8xL._AC_SY300_.jpg",
    ),
    Book(
      id: "18",
      title: "Dead Lions",
      numberOfPages: 384,
      description:
          'Excepteur ea nulla mollit deserunt exercitation in fugiat. Labore veniam velit excepteur anim nostrud consectetur officia ipsum anim nisi quis enim veniam duis. Ad laborum ut qui anim. Magna aliquip incididunt fugiat proident cupidatat laboris. Incididunt sint reprehenderit culpa tempor exercitation. Occaecat culpa quis nisi dolore qui ipsum. Elit aute reprehenderit anim sunt elit excepteur nulla minim nulla ut eiusmod.',
      imageUrl:
          "https://m.media-amazon.com/images/I/811cbiQy2vL._AC_SY300_.jpg",
    ),
  ];
}
