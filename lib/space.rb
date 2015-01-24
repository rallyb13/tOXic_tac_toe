class Space

  @@spaces = []

  attr_reader(:x_coordinate, :y_coordinate)

  define_method(:initialize) do |attributes|
    @x_coordinate = attributes.fetch(:x)
    @y_coordinate = attributes.fetch(:y)
  end

  define_singleton_method(:all) do
    @@spaces
  end

  define_method(:create) do
    @@spaces.push(self)
  end

end
