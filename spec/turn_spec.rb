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
    let(:move) { possible_moves[0] }

    it 'Can run a turn by choosing a move' do
      expect(subject.run(move)).to eq move
    end

    it 'Can run a turn with a random move' do
      allow(subject).to receive(:random_move) { move }

      expect(subject.run('random')).to eq move
    end
  end
end
