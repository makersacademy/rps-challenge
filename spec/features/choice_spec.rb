feature "choose rock, paper or scissors" do
  scenario "player can choose an item" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_xpath("//img[@src='http://cdn1.sciencefiction.com/wp-content/uploads/2013/06/The-Rock-wwe-champion-hd-wallpapers.jpg.jpeg']")
  end
end
