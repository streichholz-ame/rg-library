class Book

  attr_reader :author

  include Validation

  def initialize(title, author)
    if validate!(title, author)
      @author = author
    else
      raise 'Try again'
    end
  end

  private

  def validate!(title, author)
    presence_validate!(title)
    presence_validate!(author)

    class_validate!(title, String)
    class_validate!(author, Author)
  end
end
