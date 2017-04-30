feature "play page:" do

  before { submit_names("Ant") }

  scenario "user sees name" do
    expect(page).to have_content "Player One: Ant"
  end

  scenario "user sees three options" do
    expect(page).to have_content "ROCK"
    expect(page).to have_content "PAPER"
    expect(page).to have_content "SCISSORS"
  end

  scenario "user can choose rock" do
    within('div#options') { within('div#rock') { click_button 'Choose' } }
  end

  scenario "user can choose paper" do
    within('div#options') { within('div#paper') { click_button 'Choose' } }
  end

  scenario "user can choose scissors" do
    within('div#options') { within('div#scissors') { click_button 'Choose' } }
  end

end
