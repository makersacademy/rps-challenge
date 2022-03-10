feature 'Enter name' do
  scenario 'entering player name' do
    visit('/')
    fill_in :player_name, with: 'Jonny'
    click_button 'Submit'
    expect(page).to have_content 'Hello Jonny'
  end
end