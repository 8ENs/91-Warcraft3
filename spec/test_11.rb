require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end

  # it "starts off with 500 HP" do
  #   expect(@barracks.health_points).to eq(500)
  # end

  describe "#damage" do
    it "returns half damage (5) if footman attacks @Barracks" do
      footman = @barracks.train_footman
      @barracks.should_receive(:damage).with(5)
      footman.attack!(@barracks)
    end
  end 
end