feature 'Making a move' do
  scenario 'Rock' do
    sign_in_and_play
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You have played Rock'
  end

  scenario "Paper" do
    sign_in_and_play
    choose 'Paper'
    click_button 'Submit'
    expect(page).to have_content 'You have played Paper'
  end

  scenario 'Scissors' do
    sign_in_and_play
    choose 'Scissors'
    click_button 'Submit'
    expect(page).to have_content 'You have played Scissors'
  end
end
