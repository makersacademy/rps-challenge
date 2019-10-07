feature 'select rock, paper, scissors' do 
  scenario 'user can select to play rock' do 
    sign_in_and_play
    click_link 'ROCK' 
    expect(page).to have_content 'ROCK' 
  end

  scenario 'user can select to play paper' do 
    sign_in_and_play
    click_link 'PAPER'
    expect(page).to have_content 'PAPER'
  end
   
  scenario 'user can select to play scissors' do
    sign_in_and_play
    click_link 'SCISSORS'
    expect(page).to have_content 'SCISSORS'
  end
end 
