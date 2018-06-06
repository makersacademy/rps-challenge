feature 'Scoreboard' do
  scenario 'the player can see the scoreboard on the results page' do
    log_in_and_play
    click_button('Paper')
    expect(page).to have_content "gameswon"
  end


  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
