# spec/features/show_results_spec.rb

feature 'Throwing page' do
  scenario 'Win' do
    sign_in_as_michael
    choose('scissors')
    srand(4)
    click_button("Throw!")
    expect(page).to have_content "Michael: scissors vs Computer: paper"
    expect(page).to have_content 'You Win!'
  end

  scenario 'Lose' do
    sign_in_as_michael
    choose('rock')
    srand(4)
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: paper"
    expect(page).to have_content 'You Lose!'
  end

  scenario 'Tie' do
    sign_in_as_michael
    choose('paper')
    srand(4)
    click_button("Throw!")
    expect(page).to have_content "Michael: paper vs Computer: paper"
    expect(page).to have_content 'It is a tie!'
  end

  scenario 'Two players - Player 1 wins' do
    sign_in_as_tom_and_jerry
    choose('rock')
    click_button("Throw!")
    choose('scissors')
    click_button("Throw!")
    expect(page).to have_content "Tom wins!"
  end
  scenario 'Two players - Player 2 wins' do
    sign_in_as_tom_and_jerry
    choose('rock')
    click_button("Throw!")
    choose('paper')
    click_button("Throw!")
    expect(page).to have_content "Jerry wins!"
  end
  scenario 'Two players - Tie' do
    sign_in_as_tom_and_jerry
    choose('rock')
    click_button("Throw!")
    choose('rock')
    click_button("Throw!")
    expect(page).to have_content "It is a tie!"
  end
end