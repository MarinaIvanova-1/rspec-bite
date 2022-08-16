require 'greet'

RSpec.describe "greet method" do
  it "returns a string Hello, World! if you pass World as an argument" do
    result = greet("World")
    expect(result).to eq "Hello, World!"
  end
end