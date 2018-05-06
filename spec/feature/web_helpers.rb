def set_up
  visit "/"
  fill_in :name, with: player
  click_button('Enter Game')
end

def select_rock
  set_up
  find(:xpath, "//a/img[@alt='rock']/..").click
end
