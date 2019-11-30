
=begin
feature "get player name" do
  
  scenario "lone player fills in their name" do
    player_vs_computer
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end
  
end

=end