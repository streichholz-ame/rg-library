require_relative 'loader'

library = Library.new

DataGenerator.new(library).data_generate unless File.exist?(Constants::FILE_PATH)

library.save_data

puts library.top_reader
puts library.top_book
puts library.top_readers_of_top_book
