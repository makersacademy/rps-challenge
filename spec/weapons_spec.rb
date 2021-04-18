require 'weapons'


describe Weapon do
  let(:abdur)      { double('Player', name: 'abdur', weapon: 'Rock') }
  let(:computer)   { double('Player', name: 'Computer', weapon: 'Paper') }
  let(:game)       { double('Game', player_1: abdur, player_2: computer) }

  describe '#choices' do
    it 'includes all choices' do
      expect(subject.choices).to include('Rock')
      expect(subject.choices).to include('Paper')
      expect(subject.choices).to include('Scissors')
    end
  end

  # it 'rocks beats paper' do
  #   allow(game.player_1).to receive(:choose_weapon).and_return(subject.choices[0])
  #   allow(game.player_2).to receive(:choose_weapon).and_return(subject.choices[1])
  #   expect(game.)
  # end

end