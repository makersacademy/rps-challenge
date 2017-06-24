
feature "Picking a weapon" do
  scenario "player picks a rock" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#rock").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with Rock")
  end
end

feature "Picking a weapon" do
  scenario "player picks paper" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#paper").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with Paper")
  end
end

feature "Picking a weapon" do
  scenario "player picks scissors" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#scissors").set true
    click_on("Submit")
    expect(page).to have_content("Maker went with Scissors")
  end
end
