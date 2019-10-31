feature 'Choose option' do
  scenario 'choose rock, paper or scissors' do
    sign_in_to_play
    click_button "Click here to continue"
    expect(page).to have_content 'Dave choose Rock, Paper or Scissors'
  end
end
