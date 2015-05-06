require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(60, 10)
  end

  describe "#attack!" do
    it "returns only if unit HP >=0 && enemy HP >= 0" do
      enemy = Footman.new
      @unit.should_receive(:health_points).with(0)
      @unit.attack!(enemy)
      expect(@unit.attack!(@enemy)).to be_nil
    end
  end
end

