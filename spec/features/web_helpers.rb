
def sign_in_and_play
  visit('/')
  fill_in "name", :with => "Carol"
  click_button('submit')
end
