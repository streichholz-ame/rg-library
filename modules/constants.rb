module Constants
  FILE_PATH = File.join(__dir__, '../db/library.yml')

  CLASSES = [String, Integer, Date, Library, Author, Book, Reader, Order].freeze
end
