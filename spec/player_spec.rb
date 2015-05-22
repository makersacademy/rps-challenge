require 'capybara/rspec'

describe Player do

  it 'can choose rock, paper, scissors, lizard or spock' do

    subject = Player.new "Rock"
    expect(subject.choice).to eq("Rock")

  end
end