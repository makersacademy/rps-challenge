require './app'

class WebHelpers

  def sign_in
    visit('/')
    fill_in("player_name", with: "Mike Tyson") # Finds name input box by its name.
    find("input[value='Submit Name']").click # Finds submit button by its button value, i.e. button text.
  end

  def play_with_rock
    find(:select, "game_options").find(:option, "Rock").select_option
  end

end
