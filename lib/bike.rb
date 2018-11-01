class Bike 
  attr_writer :condition

  def initialize
    @condition = "good"
  end

  def working?
    @condition == "good" ? true : false
  end

end
