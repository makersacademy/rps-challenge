feature "The player can select the movement" do
  scenario "When the player selects rock and the computer selection
  is scissors, the player wins." do
    visit("/")
    fill_in :name, with: "soroush"
    click_button "Submit"
    select "rock", from: "movement"
    srand(15)
    click_button "Submit"
    expect(page).to have_content "soroush won the game."
  end

  scenario "When the player selects scissors and the computer selection
  is scissors, the game is equal." do
    visit("/")
    fill_in :name, with: "soroush"
    click_button "Submit"
    select "scissors", from: "movement"
    srand(15)
    click_button "Submit"
    expect(page).to have_content "The game is equal"
  end

  scenario "When the player selects paper and the computer selection is scissors,
  the computer wins the game." do
    visit("/")
    fill_in :name, with: "soroush"
    click_button "Submit"
    select "paper", from: "movement"
    srand(15)
    click_button "Submit"
    expect(page).to have_content "computer won the game."
  end
end
