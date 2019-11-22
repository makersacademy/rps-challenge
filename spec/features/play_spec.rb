feature 'Play' do
  scenario 'Player can select an option from rock paper scissors' do
    visit('/')
    fill_in :player_name, with: 'Anh'
    click_button 'Enter'
    expect(page).to have_content 'Anh vs. Robot'
    click_button 'Rock'
    expect(page).to have_content 'Rock beats scissors. Anh wins!'
  end
end
