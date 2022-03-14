module InitiatePlayersHelper

  def setup_players(name1, name2)
    visit('/')
    fill_in 'Player 1', with: name1
    fill_in 'Player 2', with: name2
    click_on 'Submit'
  end

end
