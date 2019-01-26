require_relative 'web_helpers'

feature "Game outcomes" do
  scenario "Player picks ROCK and computer picks PAPER" do
    expect(page).to have_content "I'm sorry -- you lose"
    expect(page).not_to have_content "Hurray! You win!"
  end

  scenario "Player picks SCISSORS and computer picks PAPER" do
    expect(page).to have_content "Hurray! You win!"
    expect(page).not_to have_content "I'm sorry -- you lose"
  end
end
