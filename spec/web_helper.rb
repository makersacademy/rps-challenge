def sign_in
  visit '/'
  fill_in :player_name, with: 'Hobbes'
  click_button :Submit
end

def in_browser(name)
  old_session = Capybara.session_name

  Capybara.session_name = name
  yield

  Capybara.session_name = old_session
end
