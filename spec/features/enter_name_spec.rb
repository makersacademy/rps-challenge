feature 'Enter name' do
  scenario 'submitting a name' do
    visit('/')
    fill_in :player_name, with: 'Emma'
    click_button 'Game on!'
    expect(page).to have_content 'Emma'
  end
end
