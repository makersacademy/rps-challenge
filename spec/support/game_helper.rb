module GameHelper
  def setup_1_player(name)
    visit('/')
    click_button('1')
    fill_in 'player1_name', with: name
    click_button('Confirm Names')
  end
  
  def setup_2_players(name1, name2)
    visit('/')
    click_button('2')
    fill_in 'player1_name', with: name1
    fill_in 'player2_name', with: name2
    click_button('Confirm Names')
  end
end
