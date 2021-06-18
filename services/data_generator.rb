require 'faker'

class DataGenerator
  attr_reader :library

  def initialize(library)
    @library = library
  end

  def data_generate
    author_generate
    books_generate
    reader_generate
    order_generate
  end

  def author_generate
    10.times.each do
      library.add_data Author.new(Faker::Book.author)
    end
  end

  def books_generate
    10.times.each do
      library.add_data Book.new(Faker::Book.title, library.authors.sample)
    end
  end

  def reader_generate
    10.times.each do
      library.add_data Reader.new(
        Faker::Name.name,
        Faker::Internet.email,
        Faker::Address.city,
        Faker::Address.street_name,
        Faker::Number.non_zero_digit
      )
    end
  end

  def order_generate
    10.times.each do
      library.add_data Order.new(
        library.books.sample,
        library.readers.sample,
        Faker::Date.between(from: '2019-01-01', to: Date.today)
      )
    end
  end
end
