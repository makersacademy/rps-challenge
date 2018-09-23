require './lib/winner'


describe Winner do
  subject(:winner)   { described_class.new(human, "Scissors") }
  subject(:loser)    { described_class.new(human, "Paper") }
  subject(:tie)      { described_class.new(human, "Rock") }
  let(:human)        { double "The choice"}

  before(:each) do
    allow(human).to receive(:chosen).and_return("Rock")
  end

  it 'should congratulate the player' do
    expect(winner.result).to eq "YOU WIN!!"
  end

  it 'should congratulate the computer' do
    expect(loser.result).to eq "You lose! Better luck next time!"
  end

  it 'should produce no winner' do
    expect(tie.result). to eq "It's a draw"
  end
end
