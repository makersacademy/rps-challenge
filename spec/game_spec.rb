require 'game'

describe Game do
  let (:ken) { double :player, name: 'Ken', move: 'rock'}
  let (:rohan) { double :player, name: 'Rohan', move: 'paper' }
  let (:joseph) { double :player, name: 'Joseph', move: 'paper' }
  let (:dio) { double :player, name: 'Dio' , move: 'scissors'}

  subject { Game.new(ken, rohan) }
  let (:round2) { Game.new(joseph, rohan) }
  describe '#name' do
    it 'should return the name of the player' do
      expect(subject.player_1.name).to eq 'Ken'
      expect(subject.player_2.name).to eq 'Rohan'
    end
  end 

  describe '#round' do
    it { is_expected.to respond_to(:round) }
    
    it 'should calculate a winner' do
      subject.round
      expect(subject.winner).to_not be_nil
    end

    it 'should return a draw if both opponents use the same move' do
      round2.round
      expect(round2.winner).to eq 'draw'
    end
  end

  describe '#result' do
    it { is_expected.to respond_to(:print_result)}

    it 'should return the name of the winner' do
      subject.round
      expect(subject.print_result).to eq "Rohan wins!"
    end
  end
end