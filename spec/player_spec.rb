require 'player'

describe Player do
  let(:subject) { Player.new('Pikachu') }
  it 'picks one option' do
    expect(subject.choose_rock).to eq 'rock'
  end
end