feature 'Displaying result of game' do

  scenario 'Displays result' do
    sign_in
    click_button 'rock'
    expect(page).to have_content "You played : "
    expect(page).to have_content "Computer played : "
    expect(page).to have_content "win"
  end

end
