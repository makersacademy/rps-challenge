feature "game options" do
  scenario "be able to choose Rock" do
    sign_in_and_play
    expect(page).to have_selector("input[type='submit'][value='Rock']")
  end

  scenario "be able to choose Rock" do
    sign_in_and_play
    expect(page).to have_selector("input[type='submit'][value='Paper']")
  end

  scenario "be able to choose Rock" do
    sign_in_and_play
    expect(page).to have_selector("input[type='submit'][value='Scissors']")
  end
end
