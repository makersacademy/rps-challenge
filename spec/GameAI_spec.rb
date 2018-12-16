require './lib/GameAI.rb'

describe GameAI do
  it 'chooses a weapon' do
    bot = GameAI.new
    bot.choice
    expect(bot.weapon).to eq('rock').or eq('scissors').or eq('paper')
  end
end
