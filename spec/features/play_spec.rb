feature "playing a game" do
  PLAY_SEED = 1234
  # As a marketeer
  # So I can play a game
  # I want to see the shapes I can play
  scenario "see the options avaliable." do
    register_name
    expect(page).to have_content "Hello Peter, welcome to Rock paper scissors."
    expect(page).to have_content "Choose one of the three shapes."
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
  # As a marketeer
  # So I can play a game
  # I want to choose a shape to play
  scenario "Choose between Rock, paper or scissors." do
    register_name
    click_button "Rock"
    expect(page).to have_content "Your move is: Rock"
  end
  # As a marketeer
  # So I can play a game
  # I want the game to choose an option
  scenario "Game chooses Rock as an option." do
    register_name
    click_button "Rock"
    expect(page).to have_content "Hello Peter, welcome to Rock paper scissors.\nChoose one of the three shapes.\nYour move is: Rock"
    
    message = find("#Opponent").text.strip #Removes text from a string.
    expect(opponent_choices).to include message
  end

  # scenario "Game chooses a random shape for an option" do
  #   register_name
  #   click_button "Rock"
  #   expect(page).to have_content "Opponent chose: Scissors"
  # end

end

# opponent_choices = "Opponent chose: #{shape.to_s.capitalize}"
# opponent_choices is a method in web_helpers.rb which creates the
# string "Opponent chose:" Rock, Paper or scissors. 
