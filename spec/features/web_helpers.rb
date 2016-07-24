def sign_in
  visit '/'
  fill_in :name, with: "Benjamin"
  click_button "LET'S GO!"
end

def click_radio_button
  within "form" do
    choose "player_choice", :match => :first
  end
  click_button "HAPPY?"
end
