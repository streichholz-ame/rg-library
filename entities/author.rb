class Author
  include Validation

  def initialize(name, *biography)
    validate!(name, *biography)

    @name = name
  end

  private

  def validate!(arguments)
    presence_validate!(arguments)
    class_validate!(arguments, String)
  end
end
