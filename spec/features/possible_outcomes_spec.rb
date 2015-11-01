require "web_helpers"


feature "plays the game" do
  before(:each) do
    sign_in
    allow_any_instance_of(Game).to receive(:picker).and_return("rock")
  end

  scenario "can win" do
    find("img[alt='paper']").click
    expect(page).to have_content('PAPER BEATS ROCK')
  end

  scenario "can draw" do
    find("img[alt='rock']").click
    expect(page).to have_content('DRAAAAW')
  end

  scenario "can loose" do
    find("img[alt='scissors']").click
    expect(page).to have_content('ROCK BEATS SCISSORS')
  end
end
