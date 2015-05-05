require_relative 'spec_helper'

# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

describe Footman do

  before :each do
    @footman = Footman.new
  end

  it "has and knows its HP (health points)" do
    expect(@footman.health_points).to eq(60)
  end

  it "has and knows its AP (attack power)" do
    expect(@footman.attack_power).to eq(10)
  end

end

# read spec code
# understand what tests and what each test is expecting
# start coding to satisfy the first test
# (run) bundle exec rspec spec/test_##.rb
# create new classes as you progress
# use binding.pry