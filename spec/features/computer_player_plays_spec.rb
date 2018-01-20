feature 'Game defaults to computer player if only one name entered' do
  scenario "Player enters name and continues" do
    enter_name_and_confirm
    expect(page).to have_content "Leigh-ann vs Computer"
  end
end

feature 'Computer choses random weapon choice' do
  scenario 'player makes weapon selection, computer selects rock' do
    enter_name_and_confirm
    player_weapon_choice('Rock')
    expect(page).not_to have_content "Computer chose PAPER!"
    expect(page).to have_content "Computer chose ROCK!"
  end
end
feature 'When playing against computer - no option for player_2 weapon choice' do
  scenario 'One player signs in, game defaults to player vs computer' do
    enter_name_and_confirm
    expect(page).to have_select("player_1_weapon", :with_options => ["Rock", "Scissors", "Paper","Spock","Lizard"])
		expect(page).not_to have_select("player_2_weapon", :with_options => ["Rock", "Scissors", "Paper","Spock","Lizard"])
	end
end
