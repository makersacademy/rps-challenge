feature 'takes users move and returns result' do
  scenario 'user chooses a move' do
    visit '/'
    fill_in :player_name, with: "Edward"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content("computer choice is:")
    expect(page).to satisfy{|page| page.has_content?("you win! :)" ) or page.has_content?("computer wins :(") or page.has_content?("It's a draw")}
    expect(page).to have_content("Play again")
  end
end
