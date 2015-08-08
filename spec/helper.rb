def browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

def setup_two_player(name)
  visit '/'
  click_button 'Two Player Mode'
  fill_in('name', with: name)
  click_button 'Submit'
end