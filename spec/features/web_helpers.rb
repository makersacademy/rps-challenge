
def sign_in_and_choose_lizard
  visit('/')
  fill_in :player_name, with: 'Darryl'
  find('#play').click
  find('#lizard').click
end
