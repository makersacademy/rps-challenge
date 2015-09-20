require 'rps_game'

describe RpsGame do

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  subject = described_class

  it 'lets the user select a weapon' do
    expect(subject.choose_player_weapon('Paper')).to eq 'Paper'
  end

  it 'randomly chooses the computer weapon' do
    expect(WEAPONS).to include subject.choose_computer_weapon
  end

  context 'after playing a round' do

    before do
      srand(0) # seeds RNG to ensure computer chooses Rock
      subject.choose_computer_weapon
    end

    context 'in the event of a tie' do
      before do
        subject.choose_player_weapon('Rock')
        subject.play
      end
      it 'reports round as tied' do
        expect(subject.results[:report]).to eq 'Rock meets Rock'
      end
      it 'declares no winner' do
        expect(subject.results[:winner]).to eq nil
      end
    end

    context 'in the event of a win' do
      before do
        subject.choose_player('Titus')
        subject.choose_player_weapon('Paper')
        subject.play
      end
      it 'reports round as won' do
        expect(subject.results[:report]).to eq 'Paper wraps Rock'
      end
      it 'declares player has won' do
        expect(subject.results[:winner]).to eq 'Titus'
      end
    end

    context 'in the event of a loss' do
      before do
        subject.choose_player_weapon('Scissors')
        subject.play
      end
      it 'reports game as lost' do
        expect(subject.results[:report]).to eq 'Rock blunts Scissors'
      end
      it 'declares computer has won' do
        expect(subject.results[:winner]).to eq 'Computer'
      end
    end

  end

end
