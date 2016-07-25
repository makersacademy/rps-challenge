feature 'winning the game' do

  scenario 'after selecting their weapon, the computer picks a weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'Submit'
    click_button "Let's see"
    expect(page).to have_content 'The computer chose scissors'
  end

  # scenario 'when I select rock, I am told I have won' do
  #   allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
  #   sign_in_and_play
  #   fill_in :weapon, with: 'Rock'
  #   click_button 'Submit'
  #   click_button "Let's see"
  #   expect(page).to have_content "Jess won"

# end

  scenario 'when I select paper, I am told I have lost' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    fill_in :weapon, with: 'Paper'
    click_button 'Submit'
    click_button "Let's see"
    expect(page).to have_content "The computer won "
  end
  
  # scenario 'when I select scissors, I am told it is a draw' do
  #   allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
  #   sign_in_and_play
  #   fill_in :weapon, with: 'Scissors'
  #   click_button 'Submit'
  #   click_button "Let's see"
  #   expect(page).to have_content "It's a draw"
  # end

end
