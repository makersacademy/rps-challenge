require 'ai_player'

describe AiPlayer do
  subject(:ai_player) { described_class.new }

  describe '#initialize' do
    it 'sets its name to "Random Ruby"' do
      expect(ai_player).to have_attributes(name: "Random Ruby")
    end
    it 'sets @choice to nil' do
      expect(ai_player).to have_attributes(choice: nil)
    end
  end

  describe '#set_choice' do
    it 'sets @choice to random option' do
      ai_player.set_choice
      expect(ai_player.choice).to_not be_nil
    end
  end

  describe '#sym_name' do
    it 'returns downcased underscored symbol of name' do
      expect(ai_player.sym_name).to eq :random_ruby
    end
  end

end
