class Reader
  include Validation

  attr_reader :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house

    check_presence
    check_type
  end

  private

  def check_presence
    presence_validate!(name)
    presence_validate!(email)
    presence_validate!(city)
    presence_validate!(street)
    presence_validate!(house)
  end

  def check_type
    class_validate!(name, String)
    class_validate!(email, String)
    class_validate!(city, String)
    class_validate!(street, String)
    integer_validate!(house)
  end
end
