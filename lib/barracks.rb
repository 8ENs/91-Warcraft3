class Barracks
attr_accessor :gold, :food, :lumber, :health_points

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @health_points = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2 # why not @ ?
  end

  def train_footman
    if can_train_footman?
      @gold -= 135 # why @ ?
      @food -= 2
      return Footman.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      return Peasant.new
    end
  end

  def can_train_siege_engine?
    gold >= 200 && food >= 3 && lumber >= 60
  end

  def train_siege_engine
    if can_train_siege_engine?
      @gold -= 200
      @food -= 3
      @lumber -= 60
      return Siege.new
    end
  end

  def damage(points) # create building parent class ?
    @health_points -= points
  end
end

# read code for spec file
# understand what tests it contains & what each is expecting
# start coding for a particular test
# (run) bundle exec rspec spec/test_##.rb
# repeat