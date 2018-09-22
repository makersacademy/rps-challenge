require 'move_generator'

describe MoveGenerator do
  describe '#random_move' do
    it 'returns a random move rock/paper/scissors' do
      expect(['rock','paper','scissors']).to include(subject.random_move)
    end
  end

  describe '#random_move_bons' do
    it 'returns a random move rock/paper/scissors/lizard/spock' do
      expect(['rock','paper','scissors','lizard','spock']).to include(subject.random_move)
    end
  end
end
