feature "players can enter names" do

  scenario "a player sees if their name after they enter it"

    view('/')
    fill_in(:player_name, :with "Jimbo")
    click_button 'Submit'
    expect(page).to have_content "Hi Jimbo!"

  end

end