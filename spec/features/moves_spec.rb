feature "Select Move" do
  scenario "Players can choose their move and it's shown" do 
    sign_in
    select 'Rock', from: "move"
    click_button 'Submit'
    expect(page).to have_content("You Picked Rock")
  end
  scenario "Computer will make move" do
    play_rock
    expect(page).to have_content("Computer Picked")
  end
end