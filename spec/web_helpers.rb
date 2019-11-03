def enter_name
  visit('/')
  fill_in :player_name, with: "Robert"
  click_button('Submit')
end

def choose_selection(selection)
  select("#{selection.capitalize}", from: 'selection')
  p selection
  click_button('Submit')
end