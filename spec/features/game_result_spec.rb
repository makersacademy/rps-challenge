feature "Game result" do

  scenario "Player wins" do
    allow_any_instance_of(Array).to receive(:sample) { "Scissors" }
    sign_in
    click_button "Rock"
    expect(page).to have_content "Melvin wins!"
  end

  scenario "Computer wins" do
    allow_any_instance_of(Array).to receive(:sample) { "Paper" }
    sign_in
    click_button "Rock"
    expect(page).to have_content "Computer wins!"
  end

  scenario "It's a draw" do
    allow_any_instance_of(Array).to receive(:sample) { "Rock" }
    sign_in
    click_button "Rock"
    expect(page).to have_content "It's a draw!"
  end

end
