require "web_helpers"


feature "sees how the game is progressing" do
  before(:each) do
    allow_any_instance_of(Game).to receive(:picker).and_return("rock")
  end

  scenario "shows a score" do
    sign_in
    find("img[alt='paper']").click
    expect(page).to have_content('SCORE: YAAARRRGH-[1,0]-COMPUTER')
    expect(page).to have_content("img[alt='paper']")
  end

  scenario "prints how you won" do
    sign_in
    find("img[alt='rock']").click
    expect(page).to have_content('PAPER BEATS ROCK')
  end

  scenario "can loose" do
    sign_in
    find("img[alt='scissors']").click
    expect(page).to have_content('ROCK BEATS SCISSORS')
  end

  scenario "keeps track of the turn number" do
    sign_in
    20.times { find("img[alt='rock']").click }
    expect(page).to have_content("TURN: 20")
    expect(page).to have_content('SCORE: YAAARRRGH-[0,0]-COMPUTER')
  end

  scenario "shows how you lost" do
    sign_in
    find("img[alt='scissors']").click
    expect(page).to have_content("img[alt='scissors']")
  end




end
