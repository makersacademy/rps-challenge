require 'game'

describe Game do

  let(:rps_mock){double :rps_mock, :result => 'Chris Wins'}

  subject{Game.new(name_1: 'Chris', name_2: 'James', num_weapons: 5, game_module: rps_mock)}

  describe '#player_1_name' do
    it 'returns player 1 name' do
      expect(subject.player_1_name).to eq 'Chris'
    end
  end

  describe '#player_2_name' do
    it 'returns player 2 name' do
      expect(subject.player_2_name).to eq 'James'
    end
  end

  describe '#result' do
    it 'calls on game module for result' do
      expect(rps_mock).to receive(:result).with({:move_1=>1, :move_2=>4, :name_1=>"Chris", :name_2=>"James", :num_weapons=>5})
      subject.result(1, 4)
    end
    it 'returns result from game module' do
      expect(subject.result(1, 4)).to eq 'Chris Wins'
    end
  end
end
