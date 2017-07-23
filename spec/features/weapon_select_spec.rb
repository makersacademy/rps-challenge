feature "Players' weapons are displayed" do
  scenario "Player can select a weapon to play from a list" do
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    expect(page).to have_content "Holden Caulfield played Rock"
  end

  scenario "Weapon chosen by computer player is shown" do
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    expect(page).to have_content "HAL played Scissors"
  end
end
