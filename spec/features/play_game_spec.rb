feature 'Player chooses rock, paper or scissors' do
  scenario 'page welcomes the player with their name' do 
    sign_in_and_play
    # expect(page).to have_content 'Ben'
  end 

  scenario 'page renders paper option' do
    sign_in_and_play
    expect(page).to have_content 'Paper'
  end

  scenario 'page renders scissors option' do
    sign_in_and_play
    expect(page).to have_content 'Scissors'
  end

  scenario 'page renders rock option' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end
end