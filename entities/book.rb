class Book
  attr_reader :author

  include Validation

  def initialize(title, author)
    raise 'Try again' unless validate!(title, author)

    @author = author
  end

  private

  def validate!(title, author)
    presence_validate!(title)
    presence_validate!(author)

    class_validate!(title, String)
    class_validate!(author, Author)
  end
end
