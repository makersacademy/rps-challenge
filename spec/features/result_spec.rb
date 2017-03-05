feature "Showing the result" do

  before do
      allow_any_instance_of(Game).to receive(:computer_choice).and_return(:scissors)
  end

  scenario "Show when player wins" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You win!")
  end

  scenario "Show when player loses" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("You lose!")
  end

  scenario "Show when draw" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("It's a draw!")
  end
end
