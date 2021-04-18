feature "Player's move" do
  scenario 'player chooses a weapon' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("You chose Rock") 
  end
end
