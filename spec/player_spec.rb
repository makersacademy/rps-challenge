require 'player'

describe Player do

  let(:player) { Player.new('Kelvin') }

  it 'can return a saved name' do
    expect(player.name).to eq('Kelvin')
  end

  it 'can store a choice' do
    player.store_choice('rock')
    expect(player.choice).to eq('rock')
  end

  it 'can reset its choice' do
    player.store_choice('rock')
    player.wipe_choice
    expect(player.choice).to eq(nil)
  end


end