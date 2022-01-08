feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors, Jack'
  end
end 
