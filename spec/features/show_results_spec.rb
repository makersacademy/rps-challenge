# spec/features/show_results_spec.rb

feature 'Throwing page' do
  scenario 'Win' do
    sign_in_as_michael
    
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
  end

  scenario 'Lose' do
    sign_in_as_michael
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
  end

  scenario 'Tie' do
    sign_in_as_michael
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
  end
end