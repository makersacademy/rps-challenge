RSpec.feature "Login:", :type => :feature do

  let(:player1) { double:Player, name: "player 1"}
  let(:player2) { double:Player, name: "player 2"}


  scenario "player has logged in and game starts" do
    # Game.reset

    visit '/'
    within('h1') do
      expect(page).to have_content('RPS Challenge')
    end

    within('form') do
      expect(page).to have_field('player_name')
      expect(page).to have_button('Submit')
    end

    sign_in_one_player(player1.name)


    # on page 'play'
    within('h1') do
      expect(page).to have_content("Let's play!")
    end
    within('h2') do
      expect(page).to have_content("Choose your move by clicking the button")
    end

    expect(page).to have_content("Your points: 0")
    expect(page).to have_content("Opponent's points: 0")

    within('form') do
      expect(page).to have_content('Rock')
      expect(page).to have_content('Paper')
      expect(page).to have_content('Scissors')
      expect(page).to have_button('Play')
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
