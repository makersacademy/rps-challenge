def sign_in_and_play(p1_name, p2_name)
  visit "/"
  within "#name_entry" do
    fill_in "name_player_one", :with => p1_name
    fill_in "name_player_two", :with => p2_name
    click_button('Play')
  end
end
