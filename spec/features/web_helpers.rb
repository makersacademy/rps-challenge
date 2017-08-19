
def enter_name
  visit('/')
  fill_in :player, with: 'Sam'
  click_button "Let's go!"
end
