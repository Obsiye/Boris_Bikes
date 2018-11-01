class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
 
  def release_bike
   fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    
  end

  private
  def full?
    @bikes.length == @capacity ? true : false
  end
  
  def empty?
    @bikes.length == 0 ? true : false
  end

end

class Bike 

    def working?
      true
    end

end
