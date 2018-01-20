feature 'computer player has it own name' do
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
