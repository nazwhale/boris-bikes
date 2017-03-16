class Bike
  def initialize(working = true)
    @working = working
  end

  def working?
     @working == "broken" ? false : true
  end
end
