class Unit
attr_accessor :health_points
attr_reader :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    #return enemy.damage(@attack_power) if health_points && enemy.health_points
    puts "ORANGE"
  end

  def damage(points)
    @health_points -= points
  end

  def dead?
    health_points <= 0
  end
end