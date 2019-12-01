feature " getting player's name" do 
  scenario "filling in form" do 
    sign_in_and_play
    expect(page).to have_content "Raluca"
  end

end
