

def sign_in_and_play
    visit "/"

    fill_in "player_name", :with => "naomi"

    click_button "Enter"
end
