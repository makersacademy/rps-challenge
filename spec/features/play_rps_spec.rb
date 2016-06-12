feature 'Play Rock Paper Scissors' do

  #As a marketeer
  #So that I can enjoy myself away from the daily grind
  #I would like to be able to play rock/paper/scissors
  scenario 'Player can select paper, rock or scissor' do
    enter_rnd_name_go_to_single_player_game
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissor')
  end

  #As a marketeer
  #So that I can know if I won or not
  #I would like to see the outcome of the game printed out
  scenario 'Player 1 selects paper, ai selects paper, draw' do
    srand(3)
    enter_rnd_name_go_to_single_player_game
    click_button('Paper')
    expect(page).to have_content('draw')
  end 

  scenario 'Player 1 selects paper, ai selects rock, player 1 wins' do
    srand(2)
    enter_rnd_name_go_to_single_player_game
    click_button('Paper')
    expect(page).to have_content("#{@random_name} wins")
  end 

  scenario 'Player 1 selects paper, ai selects scissor, ai wins' do
    srand(9)
    enter_rnd_name_go_to_single_player_game
    click_button('Paper')
    expect(page).to have_content("#{AI.new.name} wins")
  end 

  #As a marketeer
  #So I know I was not cheated on
  #I would like to see what weapon my opponent used
  scenario 'Player 1 selects paper, ai selects paper, ai choice is displayed' do
    srand(3)
    enter_rnd_name_go_to_single_player_game
    click_button('Paper')
    expect(page).to have_content("#{AI.new.name} used P")
  end 

  #As a marketeer
  #So I can enjoy myself with friends
  #I would like to choose between playing against a friend or the computer
  scenario 'Users enter names, second name is shown' do
    enter_rnd_names_go_to_multi_player_game
    expect(page).to have_content("#{@random_name_1} vs #{@random_name_2}")
  end 
end 
