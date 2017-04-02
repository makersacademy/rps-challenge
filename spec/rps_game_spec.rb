require 'rps_game'
require 'player'
describe RPSGame do

  subject(:rps) {described_class.new(choices)}
  let(:player_1_choice) {"rock"}
  let(:player_2_choice) {"scissors"}
  let(:choices)  {double(:choices, :list => game_of_9_choices)}
  let(:game_of_5_choices) {["rock", "paper", "scissors", "lizard", "spock"]}
  let(:game_of_3_choices) {["rock", "paper", "scissors"]}
  let(:game_of_9_choices) {[
    'rock',
    'lizard',
    'spock',
    'wizard',
    'batman',
    'spiderman',
    'glock',
    'scissors',
    'paper',
  ]}


  describe '#choices_that_win_against' do
    # it 'returns paper when input rock' do
    #   expect(rps.choices_that_win_against('rock')).to eq('paper')
    # end
    #
    # it 'returns scissors when input paper' do
    #   expect(rps.choices_that_win_against('paper')).to eq('scissors')
    #
    # end
    #
    # it 'returns rock when input scissors' do
    #   expect(rps.choices_that_win_against('scissors')).to eq('rock')
    # end


    it 'Tests for all extra features' do

    expect(rps.choices_that_win_against('spock').sort).to eq((game_of_9_choices - ['rock','wizard','spiderman','scissors']).sort)
    expect(rps.choices_that_win_against('lizard').sort).to eq((game_of_9_choices - ['spock','batman','glock','paper']).sort)
    expect(rps.choices_that_win_against('wizard').sort).to eq((game_of_9_choices - ['batman','glock','paper','lizard']).sort)
    expect(rps.choices_that_win_against('batman').sort).to eq((game_of_9_choices - ['spiderman','scissors','rock','spock']).sort)
    expect(rps.choices_that_win_against('spiderman').sort).to eq((game_of_9_choices - %w(glock paper lizard wizard)).sort)
    expect(rps.choices_that_win_against('glock').sort).to eq((game_of_9_choices - %w(scissors rock spock batman)).sort)
    expect(rps.choices_that_win_against('scissors').sort).to eq((game_of_9_choices - %w(paper lizard wizard spiderman)).sort)
    expect(rps.choices_that_win_against('paper').sort).to eq((game_of_9_choices - %w(rock spock batman glock)).sort)
    expect(rps.choices_that_win_against('rock').sort).to eq((game_of_9_choices - %w(lizard wizard spiderman scissors)).sort)
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
