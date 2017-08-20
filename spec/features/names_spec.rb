feature 'Enter names' do
  scenario "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("player_1")
  end
end

feature 'Game title' do
  scenario "Has the game name on the homepage" do
    visit '/'
    expect(page). to have_content("ROCK PAPER SCISSORS")
  end
end
