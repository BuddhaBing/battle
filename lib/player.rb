class Player
  attr_reader :name, :health

  def initialize(initial_name, initial_health = 100)
    @name = initial_name
    @health = initial_health
  end

  def takes_damage(damage)
    @health -= damage
  end

end
