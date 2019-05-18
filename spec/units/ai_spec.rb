require 'ai'

describe 'AI' do

  it 'can select a weapon' do
    ai = AI.new
    ai.select_weapon
    expect(ai).not_to eq(nil)
  end

end
