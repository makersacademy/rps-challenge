feature 'submit name' do
  scenario 'the player enters his name and is welcomed' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Ignacio'
  end
end

feature 'play the game' do
  scenario 'the player selects "Rock" and loses' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Paper')
    click_button('Rock')
    expect(page).to have_content 'Zoe 5.1 wins'
  end

  scenario 'the player selects "Rock" and wins' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Scissors')
    click_button('Rock')
    expect(page).to have_content 'You win!'
  end

  scenario 'the player selects "Rock" and it\'s a tie' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Rock')
    click_button('Rock')
    expect(page).to have_content 'Tie'
  end

  scenario 'the player selects "Paper" and loses' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Scissors')
    click_button('Paper')
    expect(page).to have_content 'Zoe 5.1 wins'
  end

  scenario 'the player selects "Paper" and wins' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Rock')
    click_button('Paper')
    expect(page).to have_content 'You win!'
  end

  scenario 'the player selects "Paper" and it\'s a tie' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Paper')
    click_button('Paper')
    expect(page).to have_content 'Tie'
  end

  scenario 'the player selects "Scissors" and loses' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Rock')
    click_button('Scissors')
    expect(page).to have_content 'Zoe 5.1 wins'
  end

  scenario 'the player selects "Scissors" and wins' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Paper')
    click_button('Scissors')
    expect(page).to have_content 'You win!'
  end

  scenario 'the player selects "Scissores" and it\'s a tie' do
    sign_in_and_play
    allow(Computer).to receive(:random_weapon).and_return('Scissors')
    click_button('Scissors')
    expect(page).to have_content 'Tie'
  end
end
