require 'string_builder'

RSpec.describe StringBuilder do
  context "No string is given" do
    it "returns an empty string if nothing else is given" do
      str = StringBuilder.new
      expect(str.output).to eq ""
    end

    it "returns 0 if no string is given" do
      str = StringBuilder.new
      expect(str.size).to eq 0
    end
  end

  context "Many strings are given" do
    it "returns concatenated string if 2 or more strings were added" do
      str = StringBuilder.new
      str.add("Hello")
      str.add(", World!")
      expect(str.output).to eq "Hello, World!"
    end

    it "returns the length of a string if required" do
      str = StringBuilder.new
      str.add("Hello")
      str.add(", World!")
      expect(str.size).to eq 13
    end
  end
end