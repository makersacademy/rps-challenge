feature 'playing against bots' do
  scenario 'player sees options' do
    visit '/botgame'
    expect(page).to have_content 'Pick one'
  end

# Not stubbed properly
  xscenario 'computer will play at random' do
    visit '/botgame'
    select 'Rock', from: 'rps'
    allow($game.player_2).to receive(:last_played).and_return(:rock)
    click_button 'Go!'
    expect(page).to have_content 'Draw'
  end
end