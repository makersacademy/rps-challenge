require 'game'
describe Game do
  subject(:players) { Game.new("Sheldon", "Leonard") }
  subject(:game) { Game.new("Sheldon") }

  before do
    srand(123423533)
  end
  it 'it responds to play' do
    expect(subject).to respond_to :play
  end

  it 'will tell you if you won' do
    expect(subject.game("rock")).to eq "Lost"
  end

  it 'will tell you if its a draw' do
    expect(subject.game("scissors")).to eq "Won"
  end

  it 'stores your name' do
    expect(subject.name).to eq "Sheldon"
  end

  it 'can store results' do
    subject.play("rock")
    subject.play("rock")
    expect(subject.results).to eq "Lost, Drew"
  end

  it 'can return the last result' do
    subject.play("rock")
    expect(subject.result).to eq "Lost"
  end

  it 'can be 2 player' do
    expect(players.name2).to eq "Leonard"
  end

  it 'weapon can accept 2 variables and give a winner' do
    expect(players.game("rock", "paper")).to eq "Lost"
  end

  it 'will tell you if youre playing the computer' do
    expect(subject.name2).to eq 'all his friends <3'
  end

  it 'will tell you your opponent' do
    expect(players.name2).to eq "Leonard"
  end

  it 'can tell you if you are against a computer' do
    expect(subject.computer?).to eq true
  end

  it 'stores player1s turn in 2p' do
    expect { subject.p1_turn("rock") }.to change { subject.p1_go.length }.by 1
  end
end
