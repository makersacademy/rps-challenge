require 'rps_game'

describe RpsGame do

  subject = described_class

  it 'can reset the scores' do
    subject.reset_scores
    expect(subject.setup[:scores]).to eq [0,0]
  end

  it 'can enable extended weapons' do
    subject.enable_extended(true)
    expect(subject.weapons).to include 'Lizard'
  end

  it 'lets the user select a weapon' do
    expect(subject.choose_player_weapon('Paper')).to eq 'Paper'
  end

  it 'randomly chooses the computer weapon' do
    srand(2) # seeds RNG to ensure computer chooses Rock
    expect(subject.choose_computer_weapon).to eq 'Rock'
  end

  context 'after playing a round' do

    before do
      srand(2) # seeds RNG to ensure computer chooses Rock
      subject.reset_scores
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
      it 'leaves the score unchanged' do
        expect(subject.setup[:scores]).to eq [0,0]
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
      it 'adds one to player score' do
        expect(subject.setup[:scores]).to eq [1,0]
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
      it 'adds one to computer score' do
        expect(subject.setup[:scores]).to eq [0,1]
      end
    end

  end

end
