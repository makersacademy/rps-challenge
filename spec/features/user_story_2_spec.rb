# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

RSpec.feature "Playing rock/paper/scissors" do
  scenario "should have 3 buttons" do
    register_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "it should be a computer as opponent" do
    register_and_play
    expect(page).to have_content("Computer")
  end

  
end
