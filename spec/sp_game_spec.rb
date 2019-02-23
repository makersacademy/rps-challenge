require 'sp_game'

describe Sp_game do
  it 'should be able to hold an instance of Sp_game' do
    Sp_game.start_an_sp_game('James')
    expect(Sp_game.current_sp_game).not_to be_nil
  end
end