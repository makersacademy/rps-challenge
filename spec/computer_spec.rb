require './lib/computer'

feature 'computer generates a random pick' do
  subject(:computer) { Computer }

  scenario 'computer is rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    expect(computer.weapon).to eq :rock
  end
end
