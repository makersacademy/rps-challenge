feature 'game' do

  scenario 'takes players name' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "You chose Rock"
  end

end
