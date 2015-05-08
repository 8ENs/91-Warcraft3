class Siege < Unit

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    case enemy
    when Barracks then siege_power = (@attack_power * 2).ceil # 2x
    when Siege then siege_power = @attack_power # regular strength
    else # no effect on other units (not testing for units which don't exist)
      siege_power = 0
    end
    enemy.damage(siege_power)
  end

end