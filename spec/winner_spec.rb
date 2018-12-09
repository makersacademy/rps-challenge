require './lib/winner'


describe Winner do
  subject(:winner)   { described_class.new(human, "Scissors") }
  subject(:loser)    { described_class.new(human, "Paper") }
  subject(:tie)      { described_class.new(human, "Rock") }
  let(:human)        { double "The choice"}


  it 'should congratulate the player' do
    allow(human).to receive(:chosen).and_return("Rock")
    expect(winner.result).to eq "You WIN!"
  end

  it 'should congratulate the computer' do
    allow(human).to receive(:chosen).and_return("Rock")
    expect(loser.result).to eq "You LOSE!"
  end

  it 'should give a different winners message' do
    allow(human).to receive(:chosen).and_return("Spock")
    expect(winner.result).to eq "You WIN!"
  end

  it 'should produce no winner' do
    allow(human).to receive(:chosen).and_return("Rock")
    expect(tie.result).to eq "It's a Draw"
  end
end
