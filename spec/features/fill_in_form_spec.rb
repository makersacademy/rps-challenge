feature 'index page' do
  scenario 'checks for player name' do
    visit '/' # I have default name, no fill needed
    click_button "Let's play!"
    # filled_in_click_play
    expect(page).to have_content("Change (Nick) Name")
  end
end
