require_relative "../../lib/app"

feature "given choice of rock, paper or scissors" do
  scenario "go to play page, choose rock, then see confirmation" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Joe chose Rock")
  end

  scenario "go to play page, choose paper, then see confirmation" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("Joe chose Paper")
  end

  scenario "go to play page, choose scissors, then see confirmation" do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("Joe chose Scissors")
  end
end
