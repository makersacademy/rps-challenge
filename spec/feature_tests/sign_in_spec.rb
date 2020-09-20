feature 'logging in' do
  scenario 'see player name on signing in' do
    visit('/')
    fill_in :player_name, with: 'Farhaan'
    click_button 'Submit'
    expect(page).to have_content 'Farhaan Playing'
  end
end