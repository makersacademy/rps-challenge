def sign_in_and_play_basic_2P(p1_name, p2_name)
  visit "/"
  within "#name_entry" do
    find('#game_type').find(:xpath, 'option[1]').select_option
    fill_in "name_player_one", :with => p1_name
    fill_in "name_player_two", :with => p2_name
    click_button('Play')
  end
end

def sign_in_and_play_advanced_2P(p1_name, p2_name)
  visit "/"
  within "#name_entry" do
    find('#gameMode').find(:xpath, 'option[2]').select_option
    fill_in "name_player_one", :with => p1_name
    fill_in "name_player_two", :with => p2_name
    click_button('Play')
  end
end

def sign_in_and_play_basic_1P(p1_name)
  visit "/"
  within "#name_entry" do
    find('#gameMode').find(:xpath, 'option[1]').select_option
    fill_in "name_player_one", :with => p1_name
    find(:css, "#automated_opp").set(true)
    click_button('Play')
  end
end

def sign_in_and_play_advanced_1P(p1_name)
  visit "/"
  within "#name_entry" do
    find('#gameMode').find(:xpath, 'option[2]').select_option
    fill_in "name_player_one", :with => p1_name
    find(:css, "#automated_opp").set(true)
    click_button('Play')
  end
end
