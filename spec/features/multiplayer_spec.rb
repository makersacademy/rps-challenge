feature 'multiplayer' do

  scenario 'two players can sign in' do
    multiplayer_start
    expect(page).to have_content 'Hulk vs. Ironman'
  end

  scenario 'player 1 can win' do

  end

end