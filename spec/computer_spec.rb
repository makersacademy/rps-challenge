require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  it "The Computer has a name" do
    expect(computer.name).to eq "GLaDOS"
  end

  it "Computer can return scissors" do
    allow(computer).to receive(:choice) {'scissors'}
    expect(computer.choice).to eq 'scissors'
  end

  it "Computer can have a random outcome" do
    computer.choosing
    expect(computer.rps).to include(computer.choice)
  end
  
end
