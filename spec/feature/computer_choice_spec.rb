require_relative "../../lib/app"

feature "computer randomly chooses rock, paper or scissors" do
  scenario "go to play page, choose rock, see confirmation of computer's random choice" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content(/computer chose Rock|Paper|Scissors/)
  end
end
