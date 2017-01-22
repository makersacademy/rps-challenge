require 'game_rps_two_players'

describe GameRPSTwoPlayers do
  subject(:game) { described_class.new(choice_one, choice_two)}
  let(:choice_one) { :choice_one}
  let(:choice_two) { :choice_two}
  subject(:game_rock_scissors) { described_class.new(rock, scissors)}
  subject(:game_paper_rock) { described_class.new(paper, rock)}
  subject(:game_scissors_paper) { described_class.new(scissors, paper)}
  subject(:game_scissors_rock) { described_class.new(scissors, rock)}
  subject(:game_rock_paper) { described_class.new(rock, paper)}
  subject(:game_paper_scissors) { described_class.new(paper, scissors)}
  subject(:game_rock_rock) { described_class.new(rock, rock)}
  let(:rock) {:rock}
  let(:paper) {:paper}
  let(:scissors) {:scissors}

  it 'creates an instance of Game class' do
    expect(game).to be_a(GameRPSTwoPlayers)
  end

  describe '#won?' do
    context 'first player wins' do
      it 'rock beats scissors' do
        expect(game_rock_scissors.won?).to eq(:won)
      end
      it 'paper beats rock' do
        expect(game_paper_rock.won?).to eq(:won)
      end
      it 'scissors beats paper' do
        expect(game_scissors_paper.won?).to eq(:won)
      end
    end
    context 'first player loses' do
      it 'scissors loses to rock' do
        expect(game_scissors_rock.won?).to eq(:lose)
      end
      it 'rock loses to paper' do
        expect(game_rock_paper.won?).to eq(:lose)
      end
      it 'paper loses to scissors' do
        expect(game_paper_scissors.won?).to eq(:lose)
      end
    end
    context 'tie' do
      it 'returns "tie" if tie' do
        expect(game_rock_rock.won?).to eq(:tie)
      end
    end
  end
end
