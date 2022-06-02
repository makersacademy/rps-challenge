# spec/features/show_results_spec.rb

feature 'Throwing page' do
  scenario 'Win' do
    sign_in_as_michael
    choose('rock')
    save_and_open_page
    click_button("Throw!")
    expect(page).to have_content 'You Win!'
  end

  xscenario 'Lose' do
    sign_in_as_michael
    choose(rock)
    expect(page).to have_content 'You Lose!'
  end

  xscenario 'Tie' do
    sign_in_as_michael
    choose(rock)
    expect(page).to have_content 'It is a tie!'
  end
end