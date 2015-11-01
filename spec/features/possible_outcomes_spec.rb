require "web_helpers"


feature "plays the game" do
  before(:each) do
    sign_in
    allow_any_instance_of(Game).to receive(:picker).and_return("rock")
  end

  scenario "can win" do
    click_link(@id='paper')
    expect(page).to have_content('PAPER BEATS ROCK')
  end

  scenario "can draw" do
    click_link(@id='rock')
    expect(page).to have_content('DRAAAAW')
  end

  scenario "can loose" do
    click_link(@id='scissors')
    expect(page).to have_content('ROCK BEATS SCISSORS')
  end
end
