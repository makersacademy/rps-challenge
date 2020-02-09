feature "winning, losing, and drawing" do
  scenario "if player chooses rock and computer chooses scissors, player wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    sign_in
    click_on "Rock"
    expect(page).to have_content "dave chose Rock"
    expect(page).to have_content "Computer chose Scissors"
    expect(page).to have_content "You win!"
  end

  scenario "if player chooses rock and computer chooses paper, player loses" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    sign_in
    click_on "Rock"
    expect(page).to have_content "dave chose Rock"
    expect(page).to have_content "Computer chose Paper"
    expect(page).to have_content "You lose!"
  end

  scenario "if player chooses rock and computer chooses rock, it's a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in
    click_on "Rock"
    expect(page).to have_content "dave chose Rock"
    expect(page).to have_content "Computer chose Rock"
    expect(page).to have_content "It's a draw!"
  end
end