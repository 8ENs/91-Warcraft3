# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    # test if attacking a Barracks, if so, footman power cut in half
    foot_power = enemy.class == Barracks ? (@attack_power / 2).ceil : @attack_power
    # original attack method (from Unit)
    enemy.damage(foot_power)
  end

end