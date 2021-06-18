class Order
  include Validation

  attr_reader :book, :reader

  def initialize(book, reader, date = Date.today)
    validate!(book, reader, date)

    @book = book
    @reader = reader
  end

  private

  def validate!(book, reader, date)
    class_validate!(book, Book)
    class_validate!(reader, Reader)
    class_validate!(date, Date)
  end
end
