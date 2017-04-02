require 'rps_game'
require 'player'
describe RPSGame do

  subject(:rps) {described_class.new(player_1, player_2)}
  let(:player_1) {double("Player1")}
  let(:player_2) {double("Player2")}
  let(:game_of_5_choices) {["rock", "paper", "scissors", "lizard", "spock"]}
  let(:game_of_3_choices) {["rock", "paper", "scissors"]}

  describe '#initialize' do
    it 'has an an array with correct number of components in it' do
      expect(rps.game_choices.length).to eq RPSGame::Gamesize
    end

    it 'has two player classes passed into it' do
      expect(rps.current_players.length).to eq RPSGame::Players
    end
  end

  describe '#random_choice' do
    it 'expect .sample to be called on @choices' do
      expect(rps.choices).to receive(:sample)
      rps.random_choice
    end
  end

  describe 'player_1_choice' do
    it 'extracts player choice from player 1' do
      expect(rps.current_players.first).to receive(:choice)
      rps.player_1_choice
    end
  end

  describe 'player_2_choice' do
    it 'extracts player choice from player 2' do
      expect(rps.current_players.last).to receive(:choice)
      rps.player_2_choice
    end
  end

  describe '#choices_that_win_against' do
    it 'returns paper when input rock' do
      expect(rps.choices_that_win_against('rock')).to eq('paper')
    end

    it 'returns scissors when input paper' do
      expect(rps.choices_that_win_against('paper')).to eq('scissors')

    end

    it 'returns rock when input scissors' do
      expect(rps.choices_that_win_against('scissors')).to eq('rock')
    end
  end

  describe '#game_size' do
    it 'returns the correct number of game components' do
      allow(rps).to receive(:choices) {game_of_5_choices}
      expect(rps.game_size).to eq(5)
    end
  end

  describe '#p_1_outcome' do
    it 'returns draw when players have matching choices' do
      expect(rps.player_1_outcome('rock','rock')).to eq ("draw")
    end

    it 'returns "win" when p1 wins' do
      expect(rps.player_1_outcome('rock','scissors')).to eq("win")
    end

    it 'returns "lose" when p1 loses' do
      expect(rps.player_1_outcome('rock','paper')).to eq("lose")
    end

  end

end
