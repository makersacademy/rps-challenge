require './lib/game'
describe Game do

  it 'does not have winner on init' do
    expect(subject.has_winner?).to eq false
  end

  it 'can be won' do
    subject.play(:Rock,:Paper)
    expect(subject.has_winner?).to eq true
  end

end
