class Library
  include DataLoader
  include Statistics
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
end
