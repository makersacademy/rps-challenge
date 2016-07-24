feature 'Present weapon choices' do
  scenario 'choose rock weapon' do
    sign_in_and_play
    expect(page).to have_content "Rock"
  end

  scenario 'choose paper weapon' do
    sign_in_and_play
    expect(page).to have_content "Paper"
  end

  scenario 'choose scissors weapon' do
    sign_in_and_play
    expect(page).to have_content "Scissors"
  end
end

feature 'Choose weapon ' do
  scenario 'choose rock weapon' do
    sign_in_and_play
    choose('Rock')
    click_button('Choose')
    expect(page).to have_content "You chose Rock"
  end

  scenario 'choose paper weapon' do
    sign_in_and_play
    choose('Paper')
    click_button('Choose')
    expect(page).to have_content "You chose Paper"
  end

  scenario 'choose rock weapon' do
    sign_in_and_play
    choose('Scissors')
    click_button('Choose')
    expect(page).to have_content "You chose Scissors"
  end
end
