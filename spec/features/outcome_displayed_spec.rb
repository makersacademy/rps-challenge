

# how do I feature test for randomness?

feature "game outcome is displayed" do

  before(:each) do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  scenario "player picks rock" do
    click_on("Pick your weapon")
    find(:css, "#rock").set true
    click_on("Submit")
    expect(page).to have_content("Maker draw!")
  end

  scenario "player picks paper" do
    click_on("Pick your weapon")
    find(:css, "#paper").set true
    click_on("Submit")
    expect(page).to have_content("Maker win!")
  end

  scenario "player picks scissors" do
    click_on("Pick your weapon")
    find(:css, "#scissors").set true
    click_on("Submit")
    expect(page).to have_content("Maker lose!")
  end

end
