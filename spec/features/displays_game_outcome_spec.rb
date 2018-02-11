feature "Outcome page" do

  before(:each) do
    allow_any_instance_of(Computer).to receive(:move).and_return(:scissors)
  end

  scenario "Shows the outcome of a winning game" do
    sign_in_and_play
    click_button "spock"
    expect(page).to have_content("You win!")
  end

  scenario "Shows the outcome of a drawing game" do
    sign_in_and_play
    click_button "scissors"
    expect(page).to have_content("Draw!")
  end

  scenario "Shows the outcome of a winning game" do
    sign_in_and_play
    click_button "paper"
    expect(page).to have_content("You lose!")
  end

end
