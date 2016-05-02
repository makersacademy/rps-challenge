feature 'end of game' do
  scenario 'allows to restart the game' do
    visit '/'
    fill_in('name', with: 'Pepito')
    click_button('Submit')
    click_button('ROCK')
    click_button('continue')
    click_button('continue')
    click_button('Restart!')
    expect(page).to have_content('Please choose  a weapon')
  end
end
