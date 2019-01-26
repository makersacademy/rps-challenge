class WebHelpers

  def sign_in_and_play
    visit('/')
    fill_in("player_name", with: "Mike Tyson")
    find("input[value='Submit Name']").click
  end

end
