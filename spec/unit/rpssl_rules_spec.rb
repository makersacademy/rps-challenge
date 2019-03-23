require 'rpssl_rules'

describe RpsRules do
  let(:rules) { RpsslRules.new }
  it 'returns an array of the rules with winners' do
    expect(rules.list).to be_a(Array)
  end

  it 'checks two choices against the rules' do
    choice_1 = "Rock"
    choice_2 = "Paper"
    expect(rules.check_rules(choice_1, choice_2)).to eq "@player_2"
  end

  it 'checks two choices against the rules' do
    choice_1 = "Lizard"
    choice_2 = "Paper"
    expect(rules.check_rules(choice_1, choice_2)).to eq "@player_1"
  end
end
