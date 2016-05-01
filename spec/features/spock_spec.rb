feature "extended play" do
  scenario "select game type" do
    visit '/'
    click_button "Start"
    expect(page).to have_content "Extended rules"
  end

  scenario "spock and lizard options" do
    visit '/'
    click_button "Start"
    check "game_type"
    click_button "Submit"
    expect(page).to have_button "spock"
    expect(page).to have_button "lizard"
  end

  scenario "extended not selected then no spock or lizard" do
    visit '/'
    click_button "Start"
    click_button "Submit"
    expect(page).not_to have_button "spock"
    expect(page).not_to have_button "lizard"
  end

end
