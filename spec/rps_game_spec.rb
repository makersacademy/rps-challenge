require 'rps_game'
require 'player'
describe RPSGame do

  subject(:rps) {described_class.new(player_1_choice, player_2_choice,choices)}
  let(:player_1_choice) {"rock"}
  let(:player_2_choice) {"scissors"}
  let(:choices)  {double(:choices, :list => game_of_3_choices)}
  let(:game_of_5_choices) {["rock", "paper", "scissors", "lizard", "spock"]}
  let(:game_of_3_choices) {["rock", "paper", "scissors"]}



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
