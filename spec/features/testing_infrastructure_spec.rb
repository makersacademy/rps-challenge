feature 'Enter name' do
  scenario 'submit and see player name' do
    visit('/')
    fill_in :player_name, with: 'Kirt'
    click_button 'Submit'
    expect(page).to have_content 'Greetings Kirt!'
  end
end
