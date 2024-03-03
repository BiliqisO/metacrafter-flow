import Books from 0x06

pub fun main(account: Address): Books.Book {
    return Book.book[account]!
}