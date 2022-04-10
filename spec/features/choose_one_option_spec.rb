feature 'Allows user to choose one of three options' do
  scenario 'expect player to have 3 buttons to choose from' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end
end

feature 'Allows user to choose one of three options' do
  scenario 'expect player to have 3 buttons to choose from' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end
end

feature 'Allows user to choose one of three options' do
  scenario 'expect player to have 3 buttons to choose from' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end
end