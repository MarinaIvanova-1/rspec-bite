require 'counter'

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "counted to 0 so far."
  end

  it "adds a number if it's given" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "counted to 5 so far."
  end

  it "subtracts a number if it's given" do 
    counter = Counter.new
    counter.minus(3)
    expect(counter.report).to eq "counted to -3 so far."
  end
end
