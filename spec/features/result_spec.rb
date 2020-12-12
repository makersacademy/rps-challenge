feature "Results" do
  scenario "player click rock" do
    signin
    click_button "ROCK"
    expect(page).to have_content "You choosed rock"
  end
end
