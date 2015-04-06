require 'game'

describe Game do

  let(:player1) { double :player1, name: 'Fred' }
  let(:player2) { double :player2, name: 'Barney' }
  let(:game) { described_class.new }

  before { allow(player1).to receive(:weapon=) }
  before { allow(player2).to receive(:weapon=) }

  context 'when created' do

    it 'has no players' do
      expect(game.player1.nil? && game.player2.nil?).to eq true
    end

    it 'can have players added' do
      game.player1 = player1
      game.player2 = player2
      expect(game.player1.nil? || game.player2.nil?).to eq false
    end

  end

  context 'players choose weapons' do

    before { allow(player1).to receive(:ready?) }
    before { allow(player2).to receive(:ready?) }
    before do
      game.player1 = player1
      game.player2 = player2
    end

    it 'allows the players to choose their weapons' do
      expect(player1).to receive(:weapon=).with(:rock)
      game.assign_weapon player1, :rock
    end

    it 'knows if it is not ready yet' do
      allow(player1).to receive(:ready?).and_return(true)
      allow(player2).to receive(:ready?).and_return(false)
      expect(game.ready?).to eq false
    end

    it 'knows when both players are ready' do
      allow(player1).to receive(:ready?).and_return(true)
      allow(player2).to receive(:ready?).and_return(true)
      expect(game.ready?).to eq true
    end

  end

  context 'knows who has won' do

    before do
      game.player1 = player1
      game.player2 = player2
    end

    def weapon_assignment players
      players.each do |player, weapon|
        allow(player).to receive(:weapon).and_return(weapon)
        allow(player).to receive(:ready?).and_return(true)
        game.assign_weapon player, weapon
      end
    end

    before { allow(player2).to receive(:ready?).and_return(false) }

    it 'knows that rock beats scissors' do
      weapon_assignment player1 => :rock, player2 => :scissors
      expect(game.winner).to eq player1
    end

    it 'knows that scissors beats paper' do
      weapon_assignment player1 => :paper, player2 => :scissors
      expect(game.winner).to eq player2
    end

    it 'knows that paper beats rock' do
      weapon_assignment player1 => :paper, player2 => :rock
      expect(game.winner).to eq player1
    end

    it 'knows if it is a draw' do
      weapon_assignment player1 => :rock, player2 => :rock
      expect(game.winner).to eq 'draw'
    end

  end

end