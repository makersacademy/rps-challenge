feature 'Choose Choice' do
  scenario 'Player chooses from Rock' do
    visit ('/')
    fill_in :player_name, with: 'Samir'
    click_button 'Submit'
    fill_in :choice, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You chose Rock!'
  end
end
