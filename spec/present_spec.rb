require 'present'

RSpec.describe Present do
  it "wraps and unwrappes the presents" do
    present = Present.new
    present.wrap("gift")
    expect(present.unwrap).to eq "gift"
  end

  it "fails if we wrap only already wrapped presents" do
    present = Present.new
    present.wrap("gift")
    expect{ present.wrap("another_gift") }.to raise_error "A contents has already been wrapped."
    expect(present.unwrap).to eq "gift"
  end

  it "fails if we unwrap already unwrapped presents" do
    present = Present.new
    expect{ present.unwrap }.to raise_error "No contents have been wrapped."
  end
end