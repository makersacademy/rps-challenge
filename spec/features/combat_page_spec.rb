feature 'combat page displays the fight' do

  scenario 'see names of combatants and their weapons' do
    give_name_heraldo
    click_button 'Rock'
    expect(page).to have_content('Heraldo sends Rock in to fight')
    give_name_heraldo
    click_button 'Paper'
    expect(page).to have_content('Heraldo sends Paper in to fight')
    expect(page).to have_content("Roborory's")
  end

  scenario 'sees declaration of winner' do
    give_name_heraldo
    click_button 'Rock'
    expect(page).to have_content('Shall we play again?')
  end

end
