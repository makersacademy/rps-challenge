require 'game'
require 'rps_mod'

describe Game do

  let(:dbl_player) { double :player,
    shape: nil,
    play: nil }
  let(:dbl_player_rock) { double :player,
    shape: dbl_rock,
    name: 'Dave'}
  let(:dbl_player_paper) { double :player,
    shape: dbl_paper,
    name: 'Dave'}
  let(:dbl_player_scissors) { double :player,
    shape: dbl_scissors,
    name: 'Dave'}

  let(:dbl_rock) { double :hand_shape, name: 'Rock', weaknesses: 'Paper' }
  let(:dbl_paper) { double :hand_shape, name: 'Paper', weaknesses: 'Scissors' }
  let(:dbl_scissors) { double :hand_shape, name: 'Scissors', weaknesses: 'Rock' }

  context 'playing a round' do
    it 'lists the possible shapes' do
      game = described_class.new(dbl_player, dbl_player)
      expect(game.shapes).to eq GameMod::SHAPES_ARY
    end
    it 'allows a player to pick a shape' do
      game = described_class.new(dbl_player, dbl_player)
      expect(dbl_player).to receive(:play).with(GameMod::SHAPES_ARY[0])
      game.play(0)
    end
    it 'switches player after they have picked a shape' do
      game = described_class.new(dbl_player, dbl_player_rock)
      expect{game.play(0)}.to change{game.whos_turn}.from(dbl_player)\
      .to(dbl_player_rock)
    end
    it "doesn't allow a player to take two goes" do
      game = described_class.new(dbl_player_rock, dbl_player)
      expect{ game.play(0) }.to raise_error "That player has already chosen!"
    end
  end

  context 'winning a round' do
    it 'knows rock beats scissors' do
      game = described_class.new(dbl_player_rock, dbl_player_scissors)
      expect(game.winner).to eq "#{dbl_player_rock.name} is the WINNER!"
    end
    it 'knows paper beats rock' do
      game = described_class.new(dbl_player_paper, dbl_player_rock)
      expect(game.winner).to eq "#{dbl_player_paper.name} is the WINNER!"
    end
    it 'knows scissors beats paper' do
      game = described_class.new(dbl_player_paper, dbl_player_scissors)
      expect(game.winner).to eq "#{dbl_player_scissors.name} is the WINNER!"
    end
    it 'knows when there is a tie' do
      game = described_class.new(dbl_player_paper, dbl_player_paper)
      expect(game.winner).to eq "It's a tie!"
    end
    it "doesn't return a winner for an unfinished game" do
      game = described_class.new(dbl_player, dbl_player)
      expect{ game.winner }.to raise_error "Game is not finished yet!"
    end
    it "doesn't allow play if the game is finished" do
      game = described_class.new(dbl_player_paper, dbl_player_scissors)
      expect{ game.play(0) }.to raise_error "Game is finished!"
    end
  end

  describe '#reset' do
    it 'resets the game' do
      game = described_class.new(dbl_player_rock, dbl_player_scissors)
      expect(dbl_player_rock).to receive(:play).with(nil)
      expect(dbl_player_scissors).to receive(:play).with(nil)
      game.reset
    end
  end

  context 'storing and returning instances of itself' do
    it 'stores and returns an instance of itself' do
      Game.create_instance(dbl_player_rock, dbl_player)
      game = Game.return_instance
      expect(game.player1.shape).to eq dbl_rock
    end
  end

end
