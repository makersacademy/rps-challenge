require 'computer'

describe Computer do

  it "expect computer_weapon to contain a string" do
    expect(subject.computer_weapon).to be_an_instance_of(String)
  end

end