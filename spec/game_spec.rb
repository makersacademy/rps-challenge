require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }
  let(:rules) { double(:rules) }

  it 'knows who is in the game' do
    expect(game.players).to eq [player, opponent]
  end

  before(:each) do
    allow(player).to receive(:choose_hand).with(:Rock).and_return(:Rock)
    allow(player).to receive(:choice).and_return(:Rock)
  end

  it 'knows what the player chose' do
    allow(opponent).to receive(:choose_hand).and_return(:Scissors)
    game.play_a_round(:Rock)
    expect(game.players[0].choice).to eq :Rock
  end

  it 'knows who the winner is' do
    allow(opponent).to receive(:choose_hand).and_return(:Scissors)
    allow(opponent).to receive(:choice).and_return(:Scissors)
    game.play_a_round(:Rock)
    expect(game.declare_winner).to eq 'You Win!'
  end

  it 'knows the loser' do
    allow(opponent).to receive(:choose_hand).and_return(:Paper)
    allow(opponent).to receive(:choice).and_return(:Paper)
    game.play_a_round(:Rock)
    expect(game.declare_winner).to eq 'You Lost'
  end

  it "knows if it's a draw" do
    allow(opponent).to receive(:choose_hand).and_return(:Rock)
    allow(opponent).to receive(:choice).and_return(:Rock)
    game.play_a_round(:Rock)
    expect(game.declare_winner).to eq "It's a Draw"
  end
end
