def sign_in
  visit '/'
  click_link "I'm alone"
  fill_in :name, with: "Sheldon"
  click_button "I'm ready!"
end

def sign_in_friend
  visit '/'
  click_link "I have friends"
  fill_in :name, with: "Sheldon"
  fill_in :name2, with: "Leonard"
  click_button "I'm ready!"
end
