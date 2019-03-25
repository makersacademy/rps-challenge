require 'rps_rules'

describe RpsRules do
  let(:rules) { RpsRules.new }

  it 'checks that paper beats rock' do
    choice_1 = :Rock
    choice_2 = :Paper
    expect(rules.check_rules(choice_1, choice_2)).to eq "lose"
  end

  it 'checks that scissors beats paper' do
    choice_1 = :Scissors
    choice_2 = :Paper
    expect(rules.check_rules(choice_1, choice_2)).to eq "win"
  end

  it 'checks that paper draws with paper' do
    choice_1 = :Paper
    choice_2 = :Paper
    expect(rules.check_rules(choice_1, choice_2)).to eq "draw"
  end
end
