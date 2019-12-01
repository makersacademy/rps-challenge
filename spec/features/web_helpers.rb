# require 'play_spec'

  def sign_in_and_play
    visit('/')
    fill_in('player_1_name', with: 'Dave')
    click_on "Submit"
  end
