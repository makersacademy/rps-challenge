feature 'choosing your move' do
  scenario 'can pick an option' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Enter your move:'
  end
end
