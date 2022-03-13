module GameHelper
  def setup_1_player(name)
    visit('/')
    click_button('1')
    fill_in 'player1_name', with: name
    click_button('Confirm Names')
  end
  
  def setup_2_players(name_1, name_2)
    visit('/')
    click_button('2')
    fill_in 'player1_name', with: name_1
    fill_in 'player2_name', with: name_2
    click_button('Confirm Names')
  end
end
