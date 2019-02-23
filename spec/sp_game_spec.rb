require 'sp_game'

describe SpGame do
  it 'should be able to hold an instance of Sp_game' do
    SpGame.start_an_sp_game('James')
    expect(SpGame.current_sp_game).not_to be_nil
  end
end
