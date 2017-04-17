require 'game'

describe Game do

  subject(:game) {described_class.new('rock')}
  let(:computer) {double(computer)}
  context 'the player lost' do
    it 'if has a paper & the computer has scissor' do
      allow(computer).to receive(:hand).and_return(:scissor)
      expect(game.play).to eq 'won'

    end
  end
end
