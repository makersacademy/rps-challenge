require 'game'

describe Game do
  let(:player_1) { double :player, name: "Harry" }
  let(:player_2) { double :player, name: "Ron" }
  subject(:new_game) { described_class.new(player_1, player_2) }
  
  describe '#player_1' do
    it 'returns player_1' do
      expect(new_game.player_1.name).to eq("Harry")
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(new_game.player_2.name).to eq("Ron")
    end
  end

  describe '#current_turn' do
    it 'returns the current_turn' do
      expect(new_game.current_turn).to eq(player_1)
    end
  end

  describe '#switch_turns' do
    it 'switches turns' do
      new_game.switch_turns
      expect(new_game.current_turn).to eq(player_2)
    end
  end
end
