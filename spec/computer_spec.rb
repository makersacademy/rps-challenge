require 'computer'

describe Computer do

  context '#random_pick' do
    it 'should pick random move' do
      allow(subject).to receive(:random_pick).and_return "Rock"
      expect(subject.random_pick).to eq "Rock"
    end
  end

end