feature 'testing you can start over once finished' do
  scenario 'game completed and new game requested' do
    sign_in_and_play_computer
    click_button 'Rock'
    expect(page).to have_selector("input[type=submit][value='New Game']")
  end
end
