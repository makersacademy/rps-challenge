
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to the game Apoorva'
  end
end
