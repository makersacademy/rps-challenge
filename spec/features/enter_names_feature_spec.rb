feature 'Enter names' do 
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Max'
    click_button 'Submit'
    
    expect(page).to have_content("Max vs. Bot")
  end
end