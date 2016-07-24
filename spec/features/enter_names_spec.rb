feature "players can enter names" do

  scenario "a player sees if their name after they enter it" do
    sign_in_to_play
    expect(page).to have_content "Hi Jimbo!"
  end

end