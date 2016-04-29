feature 'Choices available', :type => :feature do
  scenario 'one player' do
    mode_one_player
    expect(page).to have_button('Rock')
  end

  scenario 'multiplayer' do
    visit('/')
    click_button('two')
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content 'Player 2'
  end
end