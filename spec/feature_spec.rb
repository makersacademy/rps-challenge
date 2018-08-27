
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game


feature 'set up game' do

  scenario 'submit player name' do
    sign_in
  end

  scenario 'presented with options' do
    sign_in
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

end


feature 'submit an option' do
  scenario 'win the round' do
    sign_in
    click_button 'Submit'
    expect(page).to have_content 'You win!' || 'You lose'
  end
  scenario 'lose the round' do

  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
