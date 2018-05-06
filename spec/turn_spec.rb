require 'turn'

describe Turn do
  let(:possible_moves) { ['rock', 'paper', 'scissors'] }

  context '#initialize' do
    it 'Three outcomes avaliable' do
      expect(subject.the_options).to eq possible_moves
    end

    it 'Has rock as one option' do
      expect(subject.the_options).to include possible_moves[0]
    end

    it 'Has paper as one option' do
      expect(subject.the_options).to include possible_moves[1]
    end

    it 'Has scissors as one option' do
      expect(subject.the_options).to include possible_moves[2]
    end
  end

  context '#run' do

    it 'Can run a turn' do
      allow(subject).to receive(:rand) { 0 }
      allow(subject).to receive(:the_options) { possible_moves }
      expect(subject.run).to eq possible_moves[0]
    end
  end

end
