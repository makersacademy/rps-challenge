feature 'Enter name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in('player_name', with: 'Dione')
    click_button 'Submit'
    expect(page).to have_content 'Welcome, Dione!'
  end
end
