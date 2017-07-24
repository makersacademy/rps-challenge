require 'game'

describe Game do

  let(:player) { double(:player, name: 'Dave', weapon: 'ROCK', score: 0) }
  let(:length) { 3 }
  let(:computer) { double(:computer) }
  let(:computer_class) { double(:computer_class, new: computer) }
  subject(:game) { described_class.new(player, length, computer_class) }

  describe "player" do
    it "returns the player" do
      expect(game.player_name).to eq 'Dave'
    end
  end

  describe "#set_weapon" do
    it 'sets the player\'s weapon' do
      allow(player).to receive(:player_choice).with(any_args)
      game.player_choice('ROCK')
      expect(game.player_weapon).to eq 'ROCK'
    end
  end

  describe "#outcome" do
    it 'recognises a draw' do
      allow(computer).to receive(:computer_choice)
      allow(computer).to receive(:weapon).and_return('ROCK')
      game.battle
      expect(game.outcome).to eq 'DRAW'
    end

    it 'recognises a win' do
      allow(player).to receive(:score_up)
      allow(computer).to receive(:computer_choice)
      allow(computer).to receive(:weapon).and_return('SCISSORS')
      game.battle
      expect(game.outcome).to eq 'YOU WIN'
    end

    it 'recognises a loss' do
      allow(player).to receive(:score_up)
      allow(computer).to receive(:computer_choice)
      allow(computer).to receive(:score_up)
      allow(computer).to receive(:weapon).and_return('PAPER')
      game.battle
      expect(game.outcome).to eq 'YOU LOSE'
    end
  end

  describe "#next_round" do
    it 'increases the round by one' do
      expect { game.next_round }.to change { game.round }.by(1)
      game.next_round
    end
  end

  describe '#score' do
    it 'increases the score' do
      allow(player).to receive(:score_up)
      allow(computer).to receive(:computer_choice)
      allow(computer).to receive(:weapon).and_return('SCISSORS')
      expect(player).to receive(:score_up)
      game.battle
    end
  end

  describe '#over?' do
    it 'determines the game has finished' do
      allow(player).to receive(:score).and_return(2)
      expect(game).to be_over
    end
  end

end
