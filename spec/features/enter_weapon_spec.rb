feature 'Enter weapon' do
  scenario 'user chooses a weapon' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    choose "Rock"
    click_button 'Submit'
    expect(page).to have_content 'Dave chose Rock'
  end
end
