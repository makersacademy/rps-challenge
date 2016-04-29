feature 'Welcome menu', :type => :feature do
  scenario 'one player' do
    visit('/')
    click_button("one")
    expect(page).to have_content 'Player 1'
    expect(page).to_not have_content 'Computer'
  end

  scenario 'multiplayer' do
    visit('/')
    click_button('two')
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content 'Player 2'
  end
end
