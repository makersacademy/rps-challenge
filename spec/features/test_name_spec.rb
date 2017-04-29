feature 'Test name' do
  scenario 'player fills in name to play' do
    visit '/'
    fill_in :player, with: 'Jon'
    click_button('Play')
    expect(page).to have_content('Jon vs. Computer')
  end
end
