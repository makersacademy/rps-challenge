feature 'Enter names' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Batwoman'
    click_button 'Play!'
    expect(page).to have_content 'Batwoman'
  end
end
