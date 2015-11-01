require "web_helpers"


feature "sees how the game is progressing" do
  before(:each) do
    allow_any_instance_of(Game).to receive(:picker).and_return("rock")
    sign_in
  end

  scenario "shows a score" do
    click_link(@id='paper')
    expect(page).to have_content('SCORE: YAAARRRGH-[1, 0]-COMPUTER')
  end

  scenario "prints how you lost/won" do
    click_link(@id='paper')
    expect(page).to have_content('PAPER BEATS ROCK')
  end

  scenario "can loose" do
    click_link(@id='scissors')
    expect(page).to have_content('ROCK BEATS SCISSORS')
  end

  scenario "keeps track of the turn number" do
    20.times { click_link(@id='rock') }
    expect(page).to have_content("TURN: 20")
    expect(page).to have_content('SCORE: YAAARRRGH-[0, 0]-COMPUTER')
  end

end
