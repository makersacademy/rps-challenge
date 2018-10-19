
feature 'Enter name' do
  scenario 'Submit a name' do
    visit '/'
    fill_in :player_name, with: 'Jane'
    click_button 'Start a game!'
    expect(page).to have_content 'Jane'
  end
end
