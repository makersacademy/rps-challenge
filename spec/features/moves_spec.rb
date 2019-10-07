feature "Select Move" do
  scenario "Players can choose their move and it's shown" do 
    web_play_rock
    expect(page).to have_content("You Picked Rock.")
  end
end