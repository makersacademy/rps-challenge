feature 'playing an actual game' do
  scenario 'implements game and shows result' do
    visit '/'
    fill_in :player_name, with: 'Masha'
    click_button 'Submit'
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content ("You have lost!")
  end
end
