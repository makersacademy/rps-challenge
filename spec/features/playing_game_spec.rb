feature 'Playing the game' do
  background do
    sign_in
    click_button "Start game"
  end

  scenario 'view player names' do
    expect(page).to have_content("Sam vs. Computer")
  end

  scenario "When I submit 'rock' I am told if I have won" do
    allow_any_instance_of(Computer).to receive(:random_weapon_chooser) { :scissors }
    find_button("rock").click
    expect(page).to have_content("The result: Sam wins!!")
  end

  scenario "When we sumbit the same weapon it is a tie" do
    allow_any_instance_of(Computer).to receive(:random_weapon_chooser) { :paper }
    find_button("paper").click
    expect(page).to have_content("The result: It's a tie!")
  end

  scenario "When the computer chooses 'scissors' it wins" do
    allow_any_instance_of(Computer).to receive(:random_weapon_chooser) { :scissors }
    find_button("paper").click
    expect(page).to have_content("The result: Computer wins!!")
  end
end
