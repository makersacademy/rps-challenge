
feature "Testing" do
  scenario "can run app and check page content" do
    visit ("/")
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end

feature "Enter name" do
  scenario "submitting name" do
    sign_in_and_play
    expect(page).to have_content "Kitty vs computer"
  end
end

feature "Instructions" do
  scenario "play route shows Instructions" do
    sign_in_and_play
    expect(page).to have_content "Choose rock, paper or scissors!"
  end
end

feature "Click buttons" do
  scenario "player can win" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "You win!"
  end
end
