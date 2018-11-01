class Bike 
  attr_writer :condition

  def initialize
    @condition = "good"
  end

  def working?
    @condition == "good" ? true : false
  end

end

class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
 
  def release_bike
    good_bike_index = nil

    @bikes.each_with_index do |i_bike, index|
      if i_bike.working? == true
        good_bike_index = index
        break
      end
    end

    if @bikes.empty?
      fail 'No bikes available'
    elsif good_bike_index == nil
      fail 'No bikes available'
    else
      @bikes.delete_at(good_bike_index)
    end

  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
    report_broken(bike)
  end

  def report_broken(bike)
    bike.working? ? false : true
  end

  private
  def full?
    @bikes.length == @capacity ? true : false
  end
  
  def empty?
    @bikes.length == 0 ? true : false
  end

end
