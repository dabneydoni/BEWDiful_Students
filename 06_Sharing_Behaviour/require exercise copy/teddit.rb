require_relative 'lib/book'
require_relative 'lib/booklist'
require_relative 'lib/remote_source'

def show_menu
  puts "Would you like to:"
  puts "1. Get the New York Times' Best Sellers List?"
  puts "2. Let magic give you a book recommendation!"
  puts "3. Exit"
end

def add_remote_books
  RemoteSource.get.each do |book|
    BookList.add_book book #adds story to an array of stories.
  end
end

def random_bestseller
  RemoteSource.get.each do |book|
    Book.sample book
  end
end

def show_booklist
  BookList.books.each do |book| #StoryBoard.stories returns an array of stories
    puts book 
  end
end



puts("Welcome to NYT Book Club! The people who are too lazy to find good books on their own!")
show_menu
loop do
  choice = gets.to_i
  if choice == 1
    add_remote_books
    show_booklist
    show_menu
  elsif choice == 2
    random_bestseller
    show_menu
  elsif choice ==  3 
    break
  else
    puts "Invalid Selection"
    show_menu
  end
end

puts "Goodbye, Bookworm!"