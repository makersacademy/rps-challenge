require 'rules'

describe Rules do
  subject(:rules) { described_class.new }
  let(:players_array) { double(:players_array) }
  let(:player) { double(:player) }
  let(:player_choice) { double(:player_choice) }
  let(:opponent_choice) { double(:opponent_choice) }

  it 'checks the rules' do
    allow(players_array).to receive(:first).and_return player
    expect(rules.check_rules(players_array)).to eq player
  end
end
