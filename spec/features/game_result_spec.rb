feature 'result' do
  scenario 'has restart option' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Restart'
  end

  scenario "User wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content "Congratulations Gareth, you win!"
  end

  scenario "User wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Ahh unlucky the Computer beat you!"
  end

  scenario 'has try again option' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Try again?'
  end

  scenario 'can restart' do
    sign_in_and_play
    click_button 'rock'
    click_link 'Restart'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'can try again' do
    sign_in_and_play
    click_button 'rock'
    click_link 'Try again?'
    expect(page).to have_content 'Gareth vs. Computer'
  end

  scenario 'can see which move you chose' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'You played rock'
  end

  scenario 'can see which move the Computer chose' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'The computer played'
  end

end
