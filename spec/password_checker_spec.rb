require 'password_checker'

RSpec.describe PasswordChecker do
  it "accept the password it it's long enough" do
    password = PasswordChecker.new
    expect(password.check("123456789")).to eq true
  end

  it "gives an error if it's too short" do
    password = PasswordChecker.new
    expect{ password.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
  end
end