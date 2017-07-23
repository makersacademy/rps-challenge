feature 'Registering player' do

  scenario 'register player name' do
    visit('/')
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end
