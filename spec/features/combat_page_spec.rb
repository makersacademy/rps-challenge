feature 'combat page displays the fight' do

  scenario 'see names of combatants and their weapons' do
    reset_database
    give_name_heraldo
    click_button 'Rock'
    expect(page).to have_content('Heraldo sends Rock in to fight')
    give_name_heraldo
    click_button 'Paper'
    expect(page).to have_content('Heraldo sends Paper in to fight')
    expect(page).to have_content("Roborory's")
  end

  scenario 'sees declaration of winner' do
    reset_database
    give_name_heraldo
    click_button 'Rock'
    expect(page).to have_content('Shall we play again?')
  end

  scenario "cancelling out randomness - making sure right return value" do
  p RPS::DATABASE.contents
    reset_database
    p RPS::DATABASE.contents
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit('/')
    p RPS::DATABASE.contents
    give_name_heraldo
    p RPS::DATABASE.contents
    click_button 'Rock'
    p RPS::DATABASE.contents
    expect(page).to have_content "Heraldo sends Rock in to fight Roborory's Scissors 1 point for Heraldo! Shall we play again?"
  end

end
