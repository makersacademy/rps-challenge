feature "Testing root page content" do

  before(:each) do
    @player_sign_in = WebHelpers.new.sign_in_and_play
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
