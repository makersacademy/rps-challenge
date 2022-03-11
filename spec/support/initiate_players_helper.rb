module InitiatePlayersHelper

  def setup_players(name_1, name_2)
    visit('/')
    fill_in 'Player 1', with: name_1
    fill_in 'Player 2', with: name_2
    click_on 'Submit'
  end

end
