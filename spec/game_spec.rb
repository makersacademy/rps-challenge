require 'game'

describe Game do
subject(:game) {described_class.new(player, computer)}
let(:player) {double (:player)}
let(:computer) {double (:computer)}

  describe '#reset' do
    it 'resets the result variable to nil' do
      game.reset
      expect(game.reset).to eq(nil)
    end
  end

  describe '#comp_choose' do
    it 'chooses a weapon at random' do
      game.comp_choose
      expect(game.comp_choice).to eq('rock').or(eq('paper')).or(eq('scissors'))
    end
  end

  describe '#rock' do
    it 'wins against scissors' do
      comp_choose = double(:comp_choose => 'scissors')
      comp_choice = double(:comp_choice => 'scissors')
      game.rock
      expect(game.result).to eq(true)
    end

    it 'chooses the computer\'s weapons' do
      expect(game).to receive(:comp_choose)
      game.rock
    end
  end
end
