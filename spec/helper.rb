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

def setup_two_players_gameplay
  browser(:two) do
    visit '/'
    click_button 'Two Player Mode'
    fill_in('name', with: 'Leon')
    click_button 'Submit'
  end

  browser(:one) do
    visit '/'
    click_button 'Two Player Mode'
    fill_in('name', with: 'Ryan')
    click_button 'Submit'
  end

  browser(:two) do
    visit '/welcome'
  end

  browser(:one) do
    visit '/welcome'
  end
end