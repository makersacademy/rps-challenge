feature "Select RPS" do
  scenario "Select rock" do
    sign_in_and_play
    click_button 'Rock'
  end

  scenario "Select Sissors" do
    sign_in_and_play
    click_button 'Sissors'
    expect(page).to have_content "Sissors"
  end

  scenario "Select Paper" do
    sign_in_and_play
    click_button 'Paper'
  end

end
