# spec/features/show_results_spec.rb

feature 'Throwing page' do
  xscenario 'Win' do
    sign_in_as_michael
    choose('rock')
    click_button("Throw!")
    
    expect(page).to have_content "Michael: rock vs Computer: scissors"
    expect(page).to have_content 'You Win!'
  end

  xscenario 'Lose' do
    sign_in_as_michael
    choose('rock')
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: paper"
    expect(page).to have_content 'You Lose!'
  end

  xscenario 'Tie' do
    sign_in_as_michael
    choose('rock')
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: rock"
    expect(page).to have_content 'It is a tie!'
  end
end