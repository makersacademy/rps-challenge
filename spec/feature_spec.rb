require 'computer'

feature "Testing root page content" do

  before(:each) do
    @player_sign_in = WebHelpers.new.sign_in
  end

  scenario "User should see a title welcoming them to rock, paper, scisssors" do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end

  scenario "User should be able to sign in with their name" do
    @player_sign_in
    expect(page).to have_content("Mike Tyson")
  end

end

# describe RockPaperScissors do
#
#     before(:each) do
#       @player_sign_in = WebHelpers.new.sign_in
#       @game_play = WebHelpers.new.play_with_rock
#     end
#
#     scenario "User should be able to select an option, say Rock, and execute their move" do
#       @player_sign_in
#       allow(Computer).to receive(:play_hand).and_return("Scissors")
#       @game_play
#       find("button[id='play']").click
#       save_and_open_page
#       expect(page).to have_content("It was only a game of chance, don't gas yourself up!")
#     end
#
# end
