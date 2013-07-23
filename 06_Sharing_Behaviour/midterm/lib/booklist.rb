class BookList
	@@list = []
	def self.add_book(book)
		@@list << book
	end
	def self.books
		@@book.map do |instance|
			"Book: #{instance.title}, Author: (#{instance.author}, Description: (#{instance.description}))"
		end
	end
end
