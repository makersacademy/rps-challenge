require 'rules'

describe Rules do
  subject(:rules) { described_class.new }
  let(:players_array) { double(:players_array) }
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }
  let(:player_choice) { double(:player_choice) }
  let(:opponent_choice) { double(:opponent_choice) }

  it 'decides whether the player is the winner' do
    allow(players_array).to receive(:first).and_return player
    allow(players_array).to receive(:last).and_return opponent
    allow(player).to receive(:choice).and_return :Rock
    allow(opponent).to receive(:choice).and_return :Scissors
    expect(rules.check_rules(players_array)).to eq true
  end

  it 'decides whether the player is the loser' do
    allow(players_array).to receive(:first).and_return player
    allow(players_array).to receive(:last).and_return opponent
    allow(player).to receive(:choice).and_return :Rock
    allow(opponent).to receive(:choice).and_return :Paper
    expect(rules.check_rules(players_array)).to eq false
  end

  it 'returns a draw if both players choose the same hand' do
    allow(players_array).to receive(:first).and_return player
    allow(players_array).to receive(:last).and_return opponent
    allow(player).to receive(:choice).and_return :Rock
    allow(opponent).to receive(:choice).and_return :Rock
    expect(rules.draw?(players_array)).to eq true
  end

  it 'allows one of two beatable choices' do
    allow(players_array).to receive(:first).and_return player
    allow(players_array).to receive(:last).and_return opponent
    allow(player).to receive(:choice).and_return :Lizard
    allow(opponent).to receive(:choice).and_return :Paper
    expect(rules.check_rules(players_array)).to eq true
  end

    it 'denies one of two unbeatable choices' do
      allow(players_array).to receive(:first).and_return player
      allow(players_array).to receive(:last).and_return opponent
      allow(player).to receive(:choice).and_return :Spock
      allow(opponent).to receive(:choice).and_return :Paper
      expect(rules.check_rules(players_array)).to eq false
    end
end
