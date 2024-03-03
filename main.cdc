pub contract Books {

    pub var book: {Address: Book}
    
    pub struct Book {
        pub let title: String
        pub let volume: String
        pub let author: String
        pub let authorAddress: Address

        init(_title: String, _volume: String, _author: String, _authorAddress: Address) {
            self.title = _title
            self.volume = _volume
            self.author = _author
            self.authorAddress = _authorAddress
        }
    }

    pub fun createNewBookDetail(title: String, volume: String, author: String, authorAddress: Address) {
        let newBookDeets = UserProfile(_title: title, _volume: volume, _author: author, _authorAddress: authorAddress)
        self.book[authorAddress] = newBookDeets
    }

    init() {
        self.book = {}
    }

}