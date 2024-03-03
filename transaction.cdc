import Books from 0x06

transaction(title: String, volume: String, author: String, authorAddress: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Books.createNewBookDetail(title: title, volume: volume, author: author, authorAddress: authorAddress)
        log("new details uploaded")
    }
}
