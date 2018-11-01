class DockingStation
  attr_reader :bikes

  def initialize
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
    @bikes.length == 20 ? true : false
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
