class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Date.today)
    @book = book
    @reader = reader
    @date = date

    validate!
  end

  private

  def validate!
    class_validate!(book, Book)
    class_validate!(reader, Reader)
    class_validate!(date, Date)
  end
end
