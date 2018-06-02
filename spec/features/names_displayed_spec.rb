feature 'entering player name' do
  scenario 'name is shown at top of screen' do
    visit('/')
    click_link('Play')
    fill_in :name, with: 'Will'
    click_button('Confirm')
    expect(page).to have_text('Will vs Computer')
  end
end
