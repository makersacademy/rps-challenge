require 'player'

describe Player do
  subject(:rango) { Player.new('Rango') }

  describe '#name' do
    it 'shows its name when requested' do
      expect(rango.name).to eq 'Rango'
    end
  end

  describe '#player_choice' do
    it 'shows the current player choice when requested' do
      rango.choose_option("Scissors")
      expect(rango.current_choice).to eq "Scissors"
    end
  end

end
