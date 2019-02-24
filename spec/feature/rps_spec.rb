require_relative "web_helper.rb"

feature "Rock paper scissors can be played" do
  scenario "Player chooses rock" do
    srand(1234)
    input_names("Steve")
    click_button("Rock")
    expect(page).to have_content("You win!")
  end
  scenario "Player chooses scissors" do
    srand(1234)
    input_names("Steve")
    click_button("Scissors")
    expect(page).to have_content("You draw!")
  end
  scenario "Player chooses paper" do
    srand(1234)
    input_names("Steve")
    click_button("Paper")
    expect(page).to have_content("You lose!")
  end
end
