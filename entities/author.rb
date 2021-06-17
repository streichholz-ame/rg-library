class Author
  include Validation

  def initialize(name, *biography)
    raise 'Try again' unless validate!(name, *biography)

    @name = name
  end

  private

  def validate!(arguments)
    presence_validate!(arguments)
    class_validate!(arguments, String)
  end
end
