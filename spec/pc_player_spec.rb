require 'pc_player'

describe PCPlayer do

  subject(:pc_player) {described_class.new}

  it{is_expected.to respond_to(:choice)}

  describe '#generate_choice' do
    it 'generates a random RPS weapon' do
      expect([:rock, :paper, :scissors, :lizard, :Spock]).to include pc_player.generate_choice
    end
  end

end
