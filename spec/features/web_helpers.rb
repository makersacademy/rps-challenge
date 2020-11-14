def sign_in
  visit '/'
  fill_in :name, with: "Sheldon"
  click_button "I'm ready!"
end
