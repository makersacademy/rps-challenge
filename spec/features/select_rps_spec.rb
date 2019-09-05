feature "selecting R P or S" do
  
  scenario "before selection is made" do
    sign_in_and_play
    expect(page).to have_content("Dan's turn")
  end
  
  scenario "player 1 selects rock" do
    sign_in_and_play
    select('Rock', :from => 'RPS')
    click_button "Submit Choice"
    expect(page).to have_content("Millie's turn")
  end

end