feature "Results" do
  scenario "player click rock" do
    signin
    click_button "ROCK"
    expect(page).to have_content "You choosed rock"
  end
  scenario "player click paper" do
    signin
    click_button "ROCK"
    expect(page).to have_content "You choosed paper"
  end
  scenario "player click scissors" do
    signin
    click_button "ROCK"
    expect(page).to have_content "You choosed scissors"
  end
end
