require_relative 'spec_helper'

describe Unit do

  before :each do
    @alive = Unit.new(60, 10)
    @dead = Unit.new(0, 10)
    @footman = Footman.new
  end

  describe "#attack!" do
    it "won't change HP's for either when alive attacks dead" do
      @footman.should_receive(:health_points).at_least(:once).and_return(0) # how to overwrite ???
      @alive.attack!(@footman)
      expect(@footman.health_points).to eql(0)
      @alive.attack!(@dead)
      expect(@alive.health_points).to eql(60)
      expect(@dead.health_points).to eql(0)
    end
  end

  describe "#attack!" do
    it "won't change HP's for either when dead attacks alive" do
      @dead.attack!(@alive)
      expect(@alive.health_points).to eql(60)
      expect(@dead.health_points).to eql(0)
    end
  end

  describe "#attack!" do
    it "won't change HP's for either when dead attacks dead" do
      @dead.attack!(@dead) # need new instance of @dead? (attacking self?)
      expect(@dead.health_points).to eql(0)
    end
  end

  describe "#attack!" do
    it "WILL change HP's for either when alive attacks alive" do
      @alive.attack!(@alive) # need new instance of @dead? (attacking self?)
      expect(@alive.health_points).to eql(50)
    end
  end
end

