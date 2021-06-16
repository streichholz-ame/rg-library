class Author
  include Validation
  attr_reader :name, :biography

  def initialize(name, *biography)
    @name = name
    @biography = biography

    validate!
  end

  private

  def validate!
    presence_validate!(name)
    class_validate!(name, String)
  end
end
