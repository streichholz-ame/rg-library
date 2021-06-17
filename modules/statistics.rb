module Statistics
  def top_reader(quantity = 1)
    top_entity(:reader, quantity).keys.to_s
  end

  def top_book(quantity = 1)
    top_entity(:book, quantity).keys.to_s
  end

  def top_readers_of_top_book(quantity = 3)
    top_entity(:book, quantity)
      .values
      .flatten
      .map(&:reader)
      .uniq
      .size
  end

  private

  def top_entity(attr, quantity)
    orders.group_by(&attr)
          .sort_by { |_, orders| -orders.size }
          .first(quantity)
          .to_h
  end
end
