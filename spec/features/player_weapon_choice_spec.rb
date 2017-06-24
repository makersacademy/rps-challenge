
feature "Picking a weapon" do
  scenario "player picks a rock" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#rock").set true
    expect(page).to have_content("Maker went with rock")
  end
end

feature "Picking a weapon" do
  scenario "player picks a rock" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#paper").set true
    expect(page).to have_content("Maker went with paper")
  end
end

feature "Picking a weapon" do
  scenario "player picks a rock" do
    sign_in_and_play
    click_on("Pick your weapon")
    find(:css, "#scissors").set true
    expect(page).to have_content("Maker went with scissors")
  end
end
