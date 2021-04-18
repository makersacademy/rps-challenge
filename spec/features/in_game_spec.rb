require "./spec/features/web_helpers"

feature "when playing" do
  scenario "the player should to see in both names" do
    login_and_play
    expect(page).to have_text("Mike vs MATRIX")
  end
  
  scenario "the player should be able to click on rock" do
    login_and_play
    expect(page).to have_selector(:link_or_button, 'rock')
  end

  scenario "the player should be able to click on paper" do
    login_and_play
    expect(page).to have_selector(:link_or_button, 'paper')
  end

  scenario "the player should be able to click on scissors" do
    login_and_play
    expect(page).to have_selector(:link_or_button, 'scissors')
  end
end
