feature 'user can select a name' do
  scenario 'user visits the site and can enter their player_one' do
    visit('/')
    expect { fill_in('player_one', with: 'Nerdpuff') }.to_not raise_error
  end

  scenario 'user submits their name and is loaded into a game with that name' do
    visit('/')
    fill_in('player_one', with: 'Nerdpuff')
    click_button('Submit')
    expect(page).to have_content('Player one: Nerdpuff')
  end
end

feature 'player one can select a move' do
  before do
    visit('/')
    fill_in('player_one', with: 'Nerdpuff')
    click_button('Submit')
  end

  scenario 'player one can click "rock"' do
    within('#p1') do
      expect { click_button('Rock') }.to_not raise_error
    end
  end

  scenario 'player one can click "paper"' do
    within('#p1') do
      expect { click_button('Paper') }.to_not raise_error
    end
  end

  scenario 'player one can click "scissors"' do
    within('#p1') do
      expect { click_button('Scissors') }.to_not raise_error
    end    
  end
end

feature 'user can win and lose a game' do
  scenario 'Player one picks rock, beats scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit('/')
    fill_in('player_one', with: 'Nerdpuff')
    click_button('Submit')
    within('#p1') do
      click_button('Rock')
    end
    expect(page).to have_content('Nerdpuff beat AI with rock vs scissors!')
  end

  scenario 'Player one picks scissors, loses to rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit('/')
    fill_in('player_one', with: 'Nerdpuff')
    click_button('Submit')
    within('#p1') do
      click_button('Scissors')
    end
    expect(page).to have_content('AI beat Nerdpuff with rock vs scissors!')
  end
end
