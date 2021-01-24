feature 'Player moves' do 
  scenario 'player should have option of rock' do 
    sign_in_and_play
    expect(page).to have_content "Rock" 
  end
end

feature 'Player moves' do 
  scenario 'player should have option of paper' do 
    sign_in_and_play
    expect(page).to have_content "Paper"
  end
end

feature 'Player moves' do 
  scenario 'player should have option of scissors' do 
    sign_in_and_play
    expect(page).to have_content "Scissors"
  end
end

  feature 'Player move' do 
    scenario 'confirm player move' do 
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "P1 played Paper"
    end
  end
