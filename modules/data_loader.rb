module DataLoader
  def save_data
    File.open(Constants::FILE_PATH, 'w') { |file| file.write(to_yaml) }
  end

  def load_data
    return [] unless File.exist?(Constants::FILE_PATH)

    data = YAML.safe_load(File.read(Constants::FILE_PATH), permitted_classes: Constants::CLASSES, aliases: true)

    @authors = data.authors
    @books = data.books
    @orders = data.orders
    @readers = data.readers
  end
end
