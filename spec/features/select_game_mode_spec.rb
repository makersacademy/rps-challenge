feature 'Select game mode' do
  scenario 'choose single player mode' do
    visit '/'
    click_button('Multiplayer')
    expect(page).to have_content('Multiplayer mode activated')
  end

  scenario 'choose multiplayer mode' do
    visit '/'
    click_button('Single Player')
    expect(page).to have_content('Single player mode activated')
  end

end
