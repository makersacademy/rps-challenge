require 'player'

describe Player do
  subject(:player) { Player.new('Anh') }

  describe '#names' do
    it 'returns player name' do
      expect(player.name).to eq 'Anh'
    end
  end

  describe '#choose_option' do
    it 'returns player option' do
      expect(player.choose_option('rock')).to eq 'rock'
    end
  end

  # describe 'Rock Paper Scissors' do
  #   let (:player_rock) { ["rock\n"] }
  #   let (:robot) { ["scissors"]}
  #   let (:expected_output) { "Rock beats scissors. Anh wins!"}
  #   it 'puts player wins' do
  #     set_player_rock_and_check_expected_output
  #   end
  # end
end
