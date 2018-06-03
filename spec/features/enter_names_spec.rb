feature 'Enter name' do
  scenario 'submiting name' do
    visit('/')
    fill_in :player_1_name, with: 'Diego'
    click_button 'Submit'
    expect(page).to have_content 'Diego'
  end
end
