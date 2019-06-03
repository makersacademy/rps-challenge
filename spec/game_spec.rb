require 'game'

describe Game do
  let(:game) { described_class.new('Ed') }

  it 'should return stored player' do
    expect(game.player1.name).to eq('Ed')
  end

  it 'should auto-generate a computer opponent for single players' do
    expect(game.player2.name).to eq('RPS-Bot')
  end

  it 'should let the player lose' do
    srand(1)
    # seeding the randomiser means that the computer will always choose paper
    game.player1.choose_weapon('rock')
    expect(game.play).to eq('RPS-Bot')
  end

  it 'should let the player win' do
    srand(1)
    game.player1.choose_weapon('scissors')
    expect(game.play).to eq('RPS-Bot')
  end

  it 'should let the players draw' do
    srand(1)
    game.player1.choose_weapon('spock')
    expect(game.play).to eq('No-one... it\'s a draw')
  end
end
