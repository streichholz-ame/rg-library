# frozen_string_literal: true

module Validation
  include Errors
  def presence_validate!(value)
    raise EmptyStringError if value == '' || value.nil?
  end

  def class_validate!(value, klass)
    raise WrongClassError unless value.instance_of? klass
  end

  def integer_validate!(value)
    raise IntegerError unless value.positive? || value.instance_of?(Integer)
  end
end
