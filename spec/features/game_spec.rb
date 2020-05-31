feature "plays a game" do
  scenario "tells you who's won" do
    visit('/')
    fill_in('player_name', with: 'John')
    click_button('submit')
    select('Rock', from: 'move')
    click_button('submit')
    expect(page).to have_content("results")
  end
end