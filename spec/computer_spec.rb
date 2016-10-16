require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  before do
    allow(Game::CHOICES).to receive(:sample) {:scissors}
  end

  it 'should create an auto-choice' do
    computer.random_choice
    expect(computer.choice).to eq :scissors
  end

end
