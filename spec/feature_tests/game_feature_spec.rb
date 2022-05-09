feature "Player can play RPS" do
  scenario "Player enters their name" do
    enter_name
    expect(page).to have_text 'Simon'
  end

    scenario "I select rock and I'm told I've won" do
      allow_any_instance_of(Game).to receive(:name).and_return(2)
      enter_name
      click_button "Rock"
      expect(page).to have_content("Congratulations, you won! You picked rock and the computer picked scissors.")
    end

  scenario "I select scissors and I'm told it's a draw" do
    allow_any_instance_of(Game).to receive(:name).and_return(2)
    enter_name
    click_button "Paper"
    expect(page).to have_content("It's a draw! You picked scissors and so did the computer.")
  end

  scenario "I select paper and I'm told it's a loss" do
    allow_any_instance_of(Game).to receive(:name).and_return(2)
    enter_name
    click_button "Scissors"
    expect(page).to have_text("Sorry, you lose! You picked paper and the computer picked scissors.")
  end
  
end