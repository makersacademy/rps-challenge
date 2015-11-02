require "web_helpers"


feature "sees how the game is progressing" do
  before(:each) do
    allow_any_instance_of(Game).to receive(:picker).and_return("cat")
    sign_in
  end

  scenario "shows a score" do
    click_link(@id='goku')
    expect(page).to have_content('SCORE: YAAARRRGH-[1, 0]-COMPUTER')
  end

  scenario "prints how you lost/won" do
    click_link(@id='goku')
    expect(page).to have_content('GOKU BEATS CAT')
  end

  scenario "can loose" do
    click_link(@id='patrick')
    expect(page).to have_content('CAT BEATS PATRICK')
  end

  scenario "keeps track of the turn number" do
    20.times { click_link(@id='cat') }
    expect(page).to have_content("TURN: 20")
    expect(page).to have_content('SCORE: YAAARRRGH-[0, 0]-COMPUTER')
  end

end
