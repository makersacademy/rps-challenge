feature "Change from multi to practice or vice versa" do

  scenario 'Practice to multi' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_selector("input[type=submit][value='Switch to 2 player?']")
  end

  scenario 'Multi to practice' do
    two_player_sign_in
    click_button 'Rock'
    click_button "Paper"
    expect(page).to have_selector("input[type=submit][value='Switch to practice?']")
  end

end
