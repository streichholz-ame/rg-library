module Errors
  class EmptyStringError < StandardError
    EMPTY_STRING_ERROR_MESSAGE = 'String cannot be empty!'.freeze
    def initialize(msg = EMPTY_STRING_ERROR_MESSAGE)
      super
    end
  end

  class WrongClassError < StandardError
    WRONG_CLASS_MESSAGE = 'Wrong class. Try again.'.freeze
    def initialize(msg = WRONG_CLASS_MESSAGE)
      super
    end
  end

  class IntegerError < StandardError
    INTEGER_ERROR_MESSAGE = 'Number must be positive!'.freeze
    def initialize(msg = INTEGER_ERROR_MESSAGE)
      super
    end
  end
end
