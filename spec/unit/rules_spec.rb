require 'rules'

describe Rules do

  let(:rules) { Rules.new }

  describe 'initialize' do
    it 'has a collection of choices for rock, paper, scissors' do
      expect(rules).to respond_to(:choices)
    end

  end

  describe 'valid_choice?' do
    it 'checks that the submitted choice exists in the choices collection: true when valid' do
      expect(rules.valid_choice?("scissors")).to be true
    end

    it 'checks that the submitted choice exists in the choices collection: false when invalid' do
      expect(rules.valid_choice?("scissor")).to be false
    end
  end

  describe 'declare_winner' do
    let(:bout1wins) { double(:bout, players: [double(:player_one, choice: "rock"), double(:player_two, choice: "scissors")]) }
    let(:bout2wins) { double(:bout, players: [double(:player_one, choice: "scissors"), double(:player_two, choice: "rock")]) }
    let(:bout3tie) { double(:bout, players: [double(:player_one, choice: "scissors"), double(:player_two, choice: "scissors")]) }

    it 'applies the player choices in a bout to the logic collection to see who wins: player1' do
      expect(rules.declare_winner(bout1wins)).to eq(bout1wins.players.first)
    end

    it 'applies the player choices in a bout to the logic collection to see who wins: player2' do
      expect(rules.declare_winner(bout2wins)).to eq(bout2wins.players.last)
    end

    it 'applies the player choices in a bout to the logic collection to see who wins: tie' do
      expect(rules.declare_winner(bout3tie)).to eq("Tied")
    end
  end

end
