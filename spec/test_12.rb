require_relative 'spec_helper'

# TODO won't work if sub Footman for Unit - why? (shouldn't it inherit #dead? method?)
describe Unit do

  before :each do
    @unit = Unit.new(60,10)
  end
  
# units start alive
# damage -> if HP <= 0 -> die

  describe "#dead?" do
    it "returns true if unit HP <= 0" do
      @unit.should_receive(:health_points).and_return(0)
      expect(@unit.dead?).to be_truthy
    end
  end

end