feature 'Rock' do 
  scenario 'p1 chooses rock' do
    sign_in_and_play
    click_link 'rock'
    expect(page).to have_content 'Charlotte chose Rock'

  end
end

feature 'Paper' do 
  scenario 'p1 chooses paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'Charlotte chose Paper'

  end
end

feature 'Scissors' do 
  scenario 'p1 chooses scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'Charlotte chose Scissors'

  end
end