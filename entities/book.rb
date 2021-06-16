class Book
  attr_reader :title, :author

  include Validation
  def initialize(title, author)
    @title = title
    @author = author

    validate!
  end

  private

  def validate!
    presence_validate!(title)
    presence_validate!(author)

    class_validate!(title, String)
    class_validate!(author, Author)
  end
end
