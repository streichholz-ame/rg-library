class Author

  include Validation

  def initialize(name, *biography)
    if validate!(name, *biography)
      @name = name
    else
      raise 'Try again'
    end
  end

  private

  def validate!(arguments)
    presence_validate!(arguments)
    class_validate!(arguments, String)
  end
end
