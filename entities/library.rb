class Library
  include DataLoader
  include Errors

  attr_reader :books, :authors, :readers, :orders

  def initialize
    @authors = []
    @books = []
    @orders = []
    @readers = []

    load_data
  end

  def add_data(object)
    case object
    when Author then authors << object
    when Book then books << object
    when Order then orders << object
    when Reader then readers << object
    else raise WrongClassError
    end
  end

  def top_reader(quantity = 1)
    top_entity(:reader, quantity).keys.to_s
  end

  def top_book(quantity = 1)
    top_entity(:book, quantity).keys.to_s
  end

  def top_readers_of_top_book(quantity = 3)
    top_entity(:book, quantity)
      .values
      .flatten
      .map(&:reader)
      .uniq
      .size
  end

  private

  def top_entity(attr, quantity)
    orders.group_by(&attr)
          .sort_by { |_, orders| -orders.size }
          .first(quantity)
          .to_h
  end
end
