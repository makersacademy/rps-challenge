require 'game'

describe Game do
  let(:rps_mock){double :rps_mock, :result => 'Chris Wins'}
  subject{Game.new(name_1: 'Chris', name_2: 'James', game: rps_mock)}
  describe '#player_1_name' do
    it 'returns player 1 name' do

    end
  end
end
