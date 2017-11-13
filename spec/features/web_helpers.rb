def visit_homepage
  visit '/'
end

def register_name
  visit_homepage
  fill_in('player_name', with: 'Jamie')
  click_button('Submit')
end
