require 'player'

describe Player do
  subject(:horse) { Player.new('Horse') }
  subject(:narwhal) { Player.new('Narwhal') }

  describe '#name' do
    expect(horse.name).to eq 'Horse'
  end
end