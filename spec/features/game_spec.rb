feature 'rock, paper, scisors' do
  before do
    srand(12256424)
    sign_in
  end

  scenario 'it has a field to fill in your entry' do
    expect(page).to have_content "So, rock, paper, scissors, gecko, or space nerd?"
  end

  scenario "you can enter rock" do
    fill_in :choice, with: "rock"
    click_button "I'm ready!"
    expect(page).to have_content "You Drew!"
  end

  scenario "you can enter paper" do
    fill_in :choice, with: "paper"
    click_button "I'm ready!"
    expect(page).to have_content "You Won!"
  end

  scenario "you can enter scissors" do
    fill_in :choice, with: "scissors"
    click_button "I'm ready!"
    expect(page).to have_content "You Lost!"
  end

  context "rock and play again" do
    before do
      fill_in :choice, with: "rock"
      click_button "I'm ready!"
      click_link "Play Again!"
    end
    scenario "after playing you can replay" do
      expect(page).to have_content "Wow its Sheldon and"
    end

    scenario "you can see your results history" do
      fill_in :choice, with: "rock"
      click_button "I'm ready!"
      expect(page).to have_content "Your history: Drew, Lost"
    end
  end
end
