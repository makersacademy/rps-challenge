require 'rps_extended_combinations'
require 'rps'

describe RPS do
  subject(:rps) { described_class.new(player1, computer) }

  let(:computer) { double(:computer, name: "SkyNet", choice: :sp) }
  let(:player1) { double(:player1, name: "Dave", choice: :r) }

  let(:computer2) { double(:computer2, name: "SkyNet", choice: :l) }
  let(:player2) { double(:player2, choice: :l) }

  describe '#players_name' do
    it 'should display player and computer names' do
      expect(rps.players_names).to eq [player1.name, computer.name]
    end
  end

  describe '#result' do
    it 'should display a result' do
      expect(rps.result).to eq 'Spock vaporizes Rock.'
    end
    it 'can result in a tie' do
      rps_tie = RPS.new(player2, computer2)
      expect(rps_tie.result).to eq "It's a tie!"
    end
  end

  describe '#winner' do
    it 'should display winner' do
      # rps.result
      expect(rps.winner).to eq "#{computer.name} wins!!!"
    end
  end
end



