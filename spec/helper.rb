def browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

def setup_singleplayer
  visit '/'
  fill_in('name', with: 'Adrian')
  click_button('Submit')
  click_button('Single Player Mode')
end

def setup_multiplayer(name)
  visit '/'
  fill_in('name', with: name)
  click_button('Submit')
  click_button('Multiplayer Mode')
end

def setup_multiplayer_gameplay
  browser(:one) do
    setup_multiplayer("Adrian")
  end

  browser(:two) do
    setup_multiplayer('Bob')
  end

  browser(:one) do
    visit '/lobby'
  end

  browser(:two) do
    visit '/lobby'
  end
end

def multiplayer_choose(move1, move2)
  browser(:one) do
    choose(move1)
    click_button('Play!')
  end

  browser(:two) do
    choose(move2)
    click_button('Play!')
  end

  browser(:one) do
    visit('/lobby2')
  end

  browser(:two) do
    visit('/lobby2')
  end
end
