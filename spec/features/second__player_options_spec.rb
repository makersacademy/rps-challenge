feature "Second player's go" do

  scenario 'Second player given option' do
    two_player_sign_in
    click_button 'Rock'
    expect(page).to have_content("Player 2, it's your turn")
  end

end
