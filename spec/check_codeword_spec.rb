require 'check_codeword'

RSpec.describe "check codeword method" do
  it "returns Correct! Come in. if the codeword is horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns Close, but nope. if the codeword is home" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end

  it "returns WRONG! is the codeword is tiger" do
    result = check_codeword("tiger")
    expect(result).to eq "WRONG!"
  end

  it "returns WRONG! is only the first letter of the word is correct" do
    result = check_codeword("horn")
    expect(result).to eq "WRONG!"
  end

  it "returns WRONG! is only the last letter of the word is correct" do
    result = check_codeword("cone")
    expect(result).to eq "WRONG!"
  end
end