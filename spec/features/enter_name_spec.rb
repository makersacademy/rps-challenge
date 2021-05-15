feature 'Enter name' do
  scenario 'Shows name in play screen' do
    visit('/')
    fill_in :player_name, with: 'Charlie'
    click_button 'Submit'
    expect(page).to have_content 'Charlie'
  end
end