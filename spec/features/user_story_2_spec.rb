# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

RSpec.feature "Playing rock/paper/scissors" do
  scenario "it should see 3 buttons" do
    register_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "it should have a computer as opponent" do
    register_and_play
    expect(page).to have_content("Computer")
  end

  scenario "it should see what he and the computer have selected" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    register_and_play
    click_button('Rock')
    expect(page).to have_content("You have selected Rock")
    expect(page).to have_content("The computer has selected Scissors")
  end

  scenario "it should see who won the game" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    register_and_play
    click_button('Rock')
    expect(page).to have_content 'You won!'
  end

end
