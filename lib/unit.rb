class Unit
attr_accessor :health_points
attr_reader :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(points)
    @health_points -= points
  end
end