class Order
  include Validation

  attr_reader :book, :reader

  def initialize(book, reader, date = Date.today)
    if validate!(book, reader, date)
      @book = book, @reader = reader
    else
      raise 'Try again'
    end
  end

  private

  def validate!(book, reader, date)
    class_validate!(book, Book)
    class_validate!(reader, Reader)
    class_validate!(date, Date)
  end
end
