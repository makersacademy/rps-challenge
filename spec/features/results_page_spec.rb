require 'spec_helper'

feature "Results are shown" do
  scenario "Player 1 chooses Rock and wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
    expect(page).to have_text("AI chose Scissors")
    expect(page).to have_text("Zeshan wins!")
  end

  scenario "Player 1 chooses Rock and loses" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
    expect(page).to have_text("AI chose Paper")
    expect(page).to have_text("AI wins!")
  end

  scenario "Player chooses Rock and ties" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
    expect(page).to have_text("AI chose Rock")
    expect(page).to have_text("It's a draw!")
  end
end
