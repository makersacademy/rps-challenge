RSpec.feature "Login:", :type => :feature do

  let(:player1) { double:Player, name: "player 1"}
  let(:player2) { double:Player, name: "player 2"}


  scenario "player has logged in and game starts" do
    # Game.reset
    # require 'pry'; binding.pry

    visit '/'
    within('h1') do
      expect(page).to have_content('RPS Challenge')
    end

    within('form') do
      expect(page).to have_field('player_name')
      expect(page).to have_button('Submit')
    end

    fill_in "player_name", :with => player1.name
    click_button "Submit"

    within('h1') do
      expect(page).to have_content("Let's play!")
    end


    # in_browser(:one) do
    #   sign_in_one_player(player1.name)
    # end
    # in_browser(:two) do
    #   sign_in_one_player(player2.name)
    # end
    # in_browser(:one) do
    #   click_button("Check")
    #   expect(page).to have_content("Players: #{player1.name} #{player2.name}")
    # end
    # in_browser(:two) do
    #   click_button("Check")
    #   expect(page).to have_content("Players: #{player1.name} #{player2.name}")
    # end
  end

end
