feature "Gameplay" do
  it "gives player options of rock, paper and scissors" do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  describe "Announcing the result" do

    let(:player_rock)  { "You have played rock" }
    let(:player_paper) { "You have played paper" }
    let(:player_scissors)  { "You have played scissors" }

    it "shows if the player has chosen the rock option" do
      sign_in_and_play
      click_on('Rock')
      expect(page).to have_content(player_rock)
    end

    it "shows if the player has chosen the paper option" do
      sign_in_and_play
      click_on('Paper')
      expect(page).to have_content(player_paper)
    end

    it "shows if the player has chosen the scissors option" do
      sign_in_and_play
      click_on('Scissors')
      expect(page).to have_content(player_scissors)
    end


    let(:computer_rock)  { "Computer has played rock" }
    let(:computer_paper) { "Computer has played paper" }
    let(:computer_scissors)  { "Computer has played scissors" }

    it "shows the computers randomly chosen option" do
      sign_in_and_play
      click_on('Rock')
      expect(page).to satisfy do |page|
        page.has_content?(computer_rock || computer_paper || computer_scissors)
      end
    end
end
end
