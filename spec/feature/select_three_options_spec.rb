feature "Select RPS" do
  scenario "Select rock" do
    sign_in_and_play_single
    click_button 'Rock'
    expect(page).to have_content "Swap Players"
  end

  scenario "Select Sissors" do
    sign_in_and_play_single
    click_button 'Sissors'
    expect(page).to have_content "Swap Players"
  end

  scenario "Select Paper" do
    sign_in_and_play_single
    click_button 'Paper'
    expect(page).to have_content "Swap Players"
  end

end
