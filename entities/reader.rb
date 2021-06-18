class Reader
  include Validation

  def initialize(name, email, city, street, house)
    validate!(name, email, city, street, house)

    @name = name
  end

  private

  def validate!(*args)
    check_presence(*args)
    check_type(*args)
  end

  def check_presence(name, email, city, street, house)
    presence_validate!(name)
    presence_validate!(email)
    presence_validate!(city)
    presence_validate!(street)
    presence_validate!(house)
  end

  def check_type(name, email, city, street, house)
    class_validate!(name, String)
    class_validate!(email, String)
    class_validate!(city, String)
    class_validate!(street, String)
    integer_validate!(house)
  end
end
