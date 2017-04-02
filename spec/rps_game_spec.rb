require 'rps_game'
require 'player'
describe RPSGame do

  subject(:rps) {described_class.new(choices)}
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
      allow(rps).to receive(:player_1_choice) {"rock"}
      allow(rps).to receive(:player_2_choice) {"rock"}
      expect(rps.outcome).to eq ("draw")
    end

    it 'returns "player_1" when p1 wins' do
      allow(rps).to receive(:player_1_choice) {"rock"}
      allow(rps).to receive(:player_2_choice) {"scissors"}
      expect(rps.outcome).to eq("player_1")
    end

    it 'returns "player_2" when p1 loses' do
      allow(rps).to receive(:player_1_choice) {"rock"}
      allow(rps).to receive(:player_2_choice) {"paper"}
      expect(rps.outcome).to eq("player_2")
    end

  end



  describe '#update_choice' do

    it 'allows the choices to be updated' do
      rps.update_player_1_choice("rock")
      expect(rps.player_1_choice).to eq("rock")
    end

    it 'allows the choices to be updated' do
      rps.update_player_2_choice("paper")
      expect(rps.player_2_choice).to eq("paper")
    end

  end

end
