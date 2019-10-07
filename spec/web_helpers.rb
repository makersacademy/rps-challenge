def play_game(choice)
  visit '/'
  within 'form' do
    fill_in 'user_name', with: 'Anthony'
  end
  find_button('Start the game').click
  choose(choice)
  find_button('Submit move').click
end
