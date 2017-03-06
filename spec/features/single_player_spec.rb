feature 'Entering name' do
  scenario "Single player can enter their name" do
    single_sign_in_and_play
    expect(page).to have_content("Hi Bob! Let's play Rock Paper Scissors!")
  end
end

feature "Choosing option" do
  scenario "Player can choose an option and see which they picked" do
    single_sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Bob picked Rock"
  end
end


feature "In single player game, Computer generates random option" do
  scenario "after player picks option, they can see the computer_choice's option" do
    allow(Computer).to receive(:generate_rand_option).and_return(:rock)
    single_sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("The Computer picked Rock")
  end
end

feature "Showing the result" do

  before do
      allow_any_instance_of(Game).to receive(:p2_choice).and_return(:scissors)
  end

  scenario "Show when player wins" do
    single_sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You won!")
  end

  scenario "Show when player loses" do
    single_sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("You lost!")
  end

  scenario "Show when draw" do
    single_sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("It's a draw!")
  end
end
