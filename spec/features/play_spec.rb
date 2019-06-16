feature "Play game" do
  scenario "Player can see their choice" do
    register_name_and_play
    click_link("Rock")    
    expect(page).to have_content("Tolu selects: Rock")
  end  
end
