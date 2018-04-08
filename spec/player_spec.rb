require 'player'

RSpec.describe Player do

  let (:player) { described_class.new('Ralph') }
  let(:game) { double('game') }

  describe '#name' do

    it 'returns the name of player' do

      expect(player.name).to eq player.name

    end
  end

  describe "#choice" do

    it 'returns a random choice of the opponent' do


        expect(['Rock!', 'Paper!', 'Scissors!']).to include(player.rand_choice)



    end
  end

end
