class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price.to_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rooms_from_category = rooms.group_by { |room| room.category }
    rooms_from_category.values_at(category).flatten
  end

  def area

  end

  def details
    {"price" => @price,
      "address" => @address}

  end

end
