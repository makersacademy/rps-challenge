feature 'Play a RPS game' do
  scenario 'Player 1 selects a tool and this appear on next page' do
    visit('/')
    fill_in :player_1_name, with: 'Alpha'
    click_button 'Submit'
    click_on 'rock'
    expect(page).to have_text('rock')
  end
end
