require 'gratitudes'

RSpec.describe Gratitudes do
  it "adds gratitudes to the array" do
    gratitude = Gratitudes.new
    gratitude.add("blessing")
    expect(gratitude.format).to eq "Be grateful for: blessing"
  end

  it "adds gratitudes to the array" do
    gratitude = Gratitudes.new
    gratitude.add("blessing")
    gratitude.add("piece")
    expect(gratitude.format).to eq "Be grateful for: blessing, piece"
  end

end