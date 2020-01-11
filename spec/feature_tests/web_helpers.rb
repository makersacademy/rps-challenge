
def register_name
  visit '/'
  fill_in :player_name, with: 'John'
  click_on 'Start game'
end