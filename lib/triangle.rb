class Triangle
  attr_accessor :length, :width, :height
  def initialize(length, width, height)
    @length = length
    @height = height
    @width = width
  end

  def kind
    if length <= 0 || width <= 0 || height <= 0 || length + width <=height || length + height<= width || width+ height <= length
      raise TriangleError
    end
    if length == width &&width == height
      return :equilateral
    elsif length == width || length == height || width==height
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError

  end
end
