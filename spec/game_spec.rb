require 'game'
describe Game do
  subject(:game) { Game.new("Sheldon") }

  before do
    srand(123423533)
  end
  it 'it responds to play' do
    expect(subject).to respond_to :play
  end

  it 'will tell you if you won' do
    expect(subject.game("rock")).to eq "Won"
  end

  it 'will tell you if its a draw' do
    expect(subject.game("scissors")).to eq "Drew"
  end

  it 'will tell you if its a loss' do
    expect(subject.game("paper")).to eq "Lost"
  end

  it 'stores your name' do
    expect(subject.name).to eq "Sheldon"
  end

  it 'can store results' do
    subject.play("rock")
    subject.play("rock")
    expect(subject.results).to eq "Won, Lost"
  end

  it 'can return the last result' do
    subject.play("rock")
    expect(subject.result).to eq "Won"
  end
end
