require 'rules'

describe Rules do

  let(:subject) { Rules.new }
  subject(:rules) { Rules.new({ rock: [:scissors, :lizard] }) }
 

  it "should have rules" do
    expect(subject.rules).to include(:rock)
  end
  
  it "should decide the winning element" do
    expect(subject.winner(:rock, :lizard)).to eq :player
  end

  it "should decide the losing element" do
    expect(subject.winner(:rock, :spock)).to eq :computer
  end

  it "should establish a draw" do
    expect(subject.winner(:rock, :rock)).to eq :draw
  end
end
