
feature 'Choose move' do

  scenario 'allows user to choose rock' do
    sign_in_and_play
    expect(page).to have_button('rock')
  end

  scenario 'allows user to choose rock' do
    sign_in_and_play
    expect(page).to have_button('paper')
  end

  scenario 'allows user to choose rock' do
    sign_in_and_play
    expect(page).to have_button('scissors')
  end
end
