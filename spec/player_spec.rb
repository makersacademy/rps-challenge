require './lib/player'

describe Player do
  subject(:player) { Player.new('Leonard') }

  it 'should initialize with 0 wins' do
    expect(player.wins).to eq 0
  end

  # it 'should either be human or the computer.rb' do
  #   expect(player.type).to eq(:computer.rb).or(eq(:human))
  # end

  context '#name' do
    it 'should return a players name' do
      expect(player.name).to eq 'Leonard'
    end
  end
end
