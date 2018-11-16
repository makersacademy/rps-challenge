require_relative "./web_helper.rb"

feature 'Rock Paper Scissors' do
  scenario 'user submits name' do
    sign_in_and_submit
    expect(page).to have_content("Welcome Nim")
  end

  scenario 'user chooses rock' do
    sign_in_and_submit
    select 'Rock', from: 'choice'
    click_button("Submit")
    expect(page).to have_content("You have chosen Rock")
  end

  scenario 'user chooses scissors' do
    sign_in_and_submit
    select 'Scissors', from: 'choice'
    click_button("Submit")
    expect(page).to have_content("You have chosen Scissors")
  end

  scenario 'user makes a choice and returns to play page again ' do
    sign_in_and_submit
    select 'Scissors', from: 'choice'
    click_button("Submit")
    click_button("Play again")
    expect(page).to have_content("Welcome Nim")
  end
end
