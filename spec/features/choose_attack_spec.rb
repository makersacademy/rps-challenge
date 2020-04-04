feature 'choose rock paper or scissors' do
  scenario 'select rock' do
    visit('/')
    fill_in 'player_1', with: 'Gina'
    click_button('Save')
    click_button('Rock')
    expect(page).to have_content('You entered Rock')
  end

  scenario 'select paper' do
    visit('/')
    fill_in 'player_1', with: 'Gina'
    click_button('Save')
    click_button('Paper')
    expect(page).to have_content('You entered Paper')
  end


scenario 'select Scissors' do
  visit('/')
  fill_in 'player_1', with: 'Gina'
  click_button('Save')
  click_button('Scissors')
  expect(page).to have_content('You entered Scissors')
  end
end

