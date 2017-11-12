require 'game'

describe Game do

  let(:player_1) { double :player, name: "Joe", weapon: :rock, hit_points: 100 }
  let(:player_2) { double :player, name: "Tom", weapon: :paper, hit_points: 100 }

  let(:scissors) { double :player, name: 'scissors', weapon: :scissors }
  let(:rock) { double :player, name: 'rock', weapon: :rock }
  let(:paper) { double :player, name: 'paper', weapon: :paper }

  subject(:game) { described_class.new(player_1, player_2) }
  let(:draw) { described_class.new(player_1, player_1) }

  let(:rock_scissors) { described_class.new(rock, scissors) }
  let(:paper_scissors) { described_class.new(paper, scissors) }
  let(:paper_rock) { described_class.new(paper, rock) }

  describe '#initialize' do
    context 'when passed players' do
      it 'should store them' do
        expect(subject.player_1).to eq(player_1)
      end
    end
    context 'weapons' do
      it 'should be a hash' do
        expect(subject.weapons).to be_a Hash
      end
    end
  end

  describe '#player_1_choice' do
    context 'when called on player instance' do
      it 'should return player weapon' do
        expect(subject.player_1_choice).to eq :rock
      end
    end
  end

  describe '#player_2_choice' do
    context 'when called on player instance' do
      it 'should return player weapon' do
        expect(subject.player_2_choice).to eq :paper
      end
    end
  end

  describe '#result' do
    context 'when players have the same weapon' do
      it 'should be a draw' do
        expect(draw.result).to eq "draw!"
      end
    end

    context 'when rock vs scissors' do
      it 'rock should win' do
        expect(rock_scissors.result).to eq "Rock wins!"
      end
    end

    context 'when paper vs scissors' do
      it 'scissors should win' do
        expect(paper_scissors.result).to eq "Scissors wins!"
      end
    end

    context 'when paper vs rock' do
      it 'paper should win' do
        expect(paper_rock.result).to eq "Paper wins!"
      end
    end
  end
end
