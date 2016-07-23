feature 'Playing the game' do

  scenario 'The player can click on a button to select a weapon' do
    visit '/'
    fill_in :name, with: 'Jess'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content 'You won'
  end
end
