
feature "Picking a weapon" do

  before(:each) do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  scenario "player picks a rock" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#rock").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with rock")
    expect(page).to have_content("Comp went with rock")
  end

  scenario "player picks paper" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#paper").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with paper")
    expect(page).to have_content("Comp went with rock")
  end

  scenario "player picks scissors" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#scissors").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with scissors")
    expect(page).to have_content("Comp went with rock")
  end

end
