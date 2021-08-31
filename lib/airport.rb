class Airport
  attr_reader :plane

  def land(plane)
    fail 'airport is full' if @plane
    @plane = plane
  end

  def take_off
    @plane
    'the plane has left'
  end
end
