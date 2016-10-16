feature 'Start' do
  scenario 'Get the player name and personalize the page' do
    visit "/"
    fill_in :player, with: 'Kyaw'
    click_button "Play"
    click_button "Rock"
    expect(page).to have_content('Rock')
  end
end
