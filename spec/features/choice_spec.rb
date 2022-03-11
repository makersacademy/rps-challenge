feature 'Making choice' do
  scenario 'player can choose rock, paper or scissors' do
    sign_in
    expect(page).to have_field 'rock'
    expect(page).to have_field 'paper'
    expect(page).to have_field 'scissors'
  end

  scenario 'player chooses rock' do
    sign_in
    choose 'rock'
    click_on 'Submit'
    expect(page).to have_content 'Jonny has chosen rock'
  end

  scenario 'player chooses paper' do
    sign_in
    choose 'paper'
    click_on 'Submit'
    expect(page).to have_content 'Jonny has chosen paper'
  end

  scenario 'player chooses rock' do
    sign_in
    choose 'scissors'
    click_on 'Submit'
    expect(page).to have_content 'Jonny has chosen scissors'
  end
end