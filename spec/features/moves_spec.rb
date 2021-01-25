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
