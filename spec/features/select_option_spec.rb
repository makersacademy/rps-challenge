feature 'Select Option' do
  scenario 'Able to view Options' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'Able to Select Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'John has choosen Rock'
  end

  scenario 'Able to Select Paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'John has choosen Paper'
  end

  scenario 'Able to Select Scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'John has choosen Scissors'
  end
end