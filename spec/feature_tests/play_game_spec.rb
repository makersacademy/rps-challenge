feature 'play game' do
  scenario 'user can select rock' do
    register_name
    click_on 'Rock'
    expect(page).to have_content "You chose Rock"
  end

  scenario 'user can select paper' do
    register_name
    click_on 'Paper'
    expect(page).to have_content "You chose Paper"
  end

  scenario 'user can select scissors' do
    register_name
    click_on 'Scissors'
    expect(page).to have_content "You chose Scissors"
  end

  scenario 'computer selects either rock paper or scissors' do
    register_name
    click_on 'Rock'
    expect(page).to have_content "Computer chose"
  end

  scenario 'user selects rock, computer selects paper. Display You win!' do
    register_name
    click_on 'Rock'
    expect(page).to have_content "!"
  end
end

