def submit_name
  visit "/"
  fill_in("name", with: "Ganon")
  click_button "Go"
end
