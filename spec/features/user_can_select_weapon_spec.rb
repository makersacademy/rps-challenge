feature 'User can select weapon' do
  scenario 'User selects rock' do
    enter_name_and_confirm
    select 'Rock', :from => "player_weapon"
    expect(page).to have_content "Leigh-ann selected Rock!"
  end
  scenario 'User selects paper' do
    enter_name_and_confirm
    select 'Paper', :from => "player_weapon"
    expect(page).to have_content "Leigh-ann selected Paper!"
    expect(page).not_to have_content "Leigh-ann selected Rock!"
  end
  scenario 'User selects scissors' do
    enter_name_and_confirm
    select 'Scissors', :from => "player_weapon"
    expect(page).to have_content "Leigh-ann selected Scissors!"
    expect(page).not_to have_content "Leigh-ann selected Paper!"
  end
end

feature 'User can cannot select a weapon other than RockPaperScissors' do
  scenario 'User picks an option from list ' do
		visit('/')
		expect(page).to have_select("player_weapon", :with_options => ["Rock", "Scissors", "Paper", "Spock", "Lizard"])
		expect(page).not_to have_select("player_weapon", options: ["gun"])
	end
end
