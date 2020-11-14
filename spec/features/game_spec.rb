feature 'rock, paper, scisors' do
  before do
    srand(12256424)
    sign_in
  end

  scenario 'it has a field to fill in your entry' do
    expect(page).to have_content "So, rock, paper or scissors?"
  end

  scenario "you can enter rock" do
    click_link "Rock"
    expect(page).to have_content "You Drew!"
  end

  scenario "you can enter paper" do
    click_link "Paper"
    expect(page).to have_content "You Won!"
  end

  scenario "you can enter scissors" do
    click_link "Scissors"
    expect(page).to have_content "You Won!"
  end

  context "rock and play again" do
    before do
      click_link "Rock"
      click_link "Play Again!"
    end
    scenario "after playing you can replay" do
      expect(page).to have_content "Wow its Sheldon and"
    end

    scenario "you can see your results history" do
      click_link "Rock"
      expect(page).to have_content "Your history: Drew, Drew"
    end
    
  end
end
