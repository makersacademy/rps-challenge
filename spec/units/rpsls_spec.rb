require 'rps'

describe RockPaperScissorsLizardSpock do
  subject(:subject) { described_class.new('Chris') }
  it 'can store a name' do
    expect(subject.name).to eq('Chris')
  end
  it 'can assign player 1 a move' do
    subject.user_move('Rock')
    expect(subject.p1).to eq('Rock')
  end
  it 'makes the ai move' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    subject.ai_move
    expect(subject.p2).to eq('Paper')
  end
  context 'winning/losing' do
    context 'when Rock' do
      it 'beats Scissors' do
        player_moves_ai_moves('Rock', 'Scissors')
        expect(subject.results).to eq('You won!')
      end
      it 'beats Lizard' do
        player_moves_ai_moves('Rock', 'Lizard')
        expect(subject.results).to eq('You won!')
      end
    end
    context 'when Paper' do
      it 'beats Rock' do
        player_moves_ai_moves('Paper', 'Rock')
        expect(subject.results).to eq('You won!')
      end
      it 'beats Spock' do
        player_moves_ai_moves('Paper', 'Spock')
        expect(subject.results).to eq('You won!')
      end
    end
    context 'when Scissors' do
      it 'beats Paper' do
        player_moves_ai_moves('Scissors', 'Paper')
        expect(subject.results).to eq('You won!')
      end
      it 'beats Lizard' do
        player_moves_ai_moves('Scissors', 'Lizard')
        expect(subject.results).to eq('You won!')
      end
    end
    context 'when Lizard' do
      it 'beats Spock' do
        player_moves_ai_moves('Lizard', 'Spock')
        expect(subject.results).to eq('You won!')
      end
      it 'beats Paper' do
        player_moves_ai_moves('Lizard', 'Paper')
        expect(subject.results).to eq('You won!')
      end
    end
    context 'when Spock' do
      it 'beats Rock' do
        player_moves_ai_moves('Spock', 'Rock')
        expect(subject.results).to eq('You won!')
      end
      it 'beats Scissors' do
        player_moves_ai_moves('Spock', 'Scissors')
        expect(subject.results).to eq('You won!')
      end
    end
  end
end
