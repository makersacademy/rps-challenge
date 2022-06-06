# spec/features/choose_option_spec.rb

feature 'Throwing page' do
  scenario 'Showing options' do
    sign_in_as_michael
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
  end
end
