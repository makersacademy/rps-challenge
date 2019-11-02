require 'game'

describe Game do
  subject(:game) { Game.new }

  describe "#random_move" do

    it 'generate scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(game.random_move).to eq :scissors
    end

    it 'generate rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.random_move).to eq :rock
    end

    it 'generate paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(game.random_move).to eq :paper
    end
  end
end
