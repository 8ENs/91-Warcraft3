# 2x damage on Barracks (opposite of Footman)
# thinks all other units are "dead", except fellow Siege Engines

# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food

require_relative 'spec_helper'

describe Siege do
  
  before :each do
    @siege = Siege.new
  end

  it "starts off with 400 HP" do
    expect(@siege.health_points).to eq(400)
  end

  describe "#damage" do
    it "returns double damage (100) if siege attacks barracks" do
      # siege = @barracks.train_siege_engine
      barracks = Barracks.new
      barracks.should_receive(:damage).with(100)
      @siege.attack!(barracks)
    end
  end 
end