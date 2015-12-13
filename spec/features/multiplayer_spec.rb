feature "Multiplayer" do

  # Bonus level 1: Multiplayer
  # Change the game so that two marketeers can play against each other ( yes there are two of them ).

  scenario 'the game asks if you want to play one or two player' do
    visit('/')
    expect(page).to have_content 'How many players?'
  end

  scenario 'it lets you select a one player game' do
    visit('/')
    click_button('One')
    expect(page).to have_content 'One player game'
  end

  scenario 'it lets you select a two player game' do
    visit('/')
    click_button('Two')
    expect(page).to have_content 'Two player game'
  end

  scenario 'it lets you input two names for a two player game' do
    visit_page_and_register_two_players
    expect(page).to have_content 'Welcome Vic & Bob. Get ready for an epic battle.'
  end

  scenario 'it lets you input two names for a two player game' do
    visit_page_and_register_two_players
    click_button('ROCK!')
    expect('page').to have_content 'Bob, make your choice!'
  end

  scenario 'it tell you who the winner was' do
    visit_page_and_register_two_players
    click_button('ROCK!')
    click_button('PAPER!')
    expect('page').to have_content 'Vic chose ROCK! Bob chose PAPER!'
    expect('page').to have_content 'Bob wins!'


  end



end
