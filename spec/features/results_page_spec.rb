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
    visit '/'
    fill_in 'Player_1', with: "Zeshan"
    click_button "Submit name"
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
    expect(page).to have_text("AI chose Paper")
    expect(page).to have_text("AI wins!")
  end
end
