require 'ai_player'

describe AiPlayer do
  subject(:ai_player) { described_class.new }
  it { is_expected.to respond_to(:choice) }

  describe '#initialize' do
    it 'sets its name to "Random Ruby"' do
      expect(ai_player).to have_attributes(name: "Random Ruby")
    end
  end


  describe '#sym_name' do
    it 'returns downcased underscored symbol of name' do
      expect(ai.sym_name).to eq :random_ruby
    end
  end

end
