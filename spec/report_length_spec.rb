require 'report_length'

RSpec.describe "returns the length of the given string" do
  it "returns if Hello, World! message is given" do
    result = report_length("Hello, World!")
    expect(result).to eq "This string was 13 characters long."
  end

  it "returns if Hello, World! message is given" do
    result = report_length("Mairna")
    expect(result).to eq "This string was 6 characters long."
  end

  it "returns if Hello, World! message is given" do
    result = report_length("1234567890")
    expect(result).to eq "This string was 10 characters long."
  end

end