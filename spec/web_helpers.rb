def starting_solo
  visit("/")
  find('#sp').set(true)
  click_button("submit")
  fill_in("player1", with: 'Alex')
  click_button("submit")
end

def starting_multi
  visit("/")
  find('#mp').set(true)
  click_button("submit")
  fill_in("player1", with: 'Alex')
  fill_in("player2", with: 'Bob')
  click_button("submit")
end
