class Room
  attr_reader :category,
              :area,
              :paint

  def initialize(category, length, width)
    @category = category
    @length = length.to_i
    @width = width.to_i
    @paint  = false
    @area = @length * @width
  end

  def is_painted?
    @paint
  end

  def paint
    @paint = true
  end
end
