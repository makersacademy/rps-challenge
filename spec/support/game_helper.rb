module GameHelper
  def setup_1_player(name)
    visit('/')
    click_button('1')
    fill_in 'player1_name', with: name
    click_button('Confirm Names')
  end
  
  def setup_2_players(name1, name2)
    puts "Name 1: #{name1}\nName 2: #{name2}"
    visit('/')
    click_button('2')
    fill_in 'player1_name', with: name1 unless name1.empty?
    fill_in 'player2_name', with: name2 unless name2.empty?
    click_button('Confirm Names')
  end

  def play_complete_game
    setup_2_players('', '')
    click_button('Continue to Game')
    click_button('Player 1 Choice')
    click_button('Rock')
    click_button('Player 2 Choice')
    click_button('Paper')
  end
end
