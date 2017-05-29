feature 'test rps choice page functionality' do

  before :each do
    srand(67_809)
  end

  scenario 'user chooses rock, paper or scissors' do
    sign_in
    click_on('Rock')
    expect(page).to have_content('Bob chose Rock')
  end

  scenario 'user can keep playing after first game' do
    sign_in
    click_on('Rock')
    click_button('Next Turn')
    expect(page).to have_content('Bob vs Computer')
  end

  scenario 'score is tracked' do
    sign_in
    click_on('Rock')
    click_button('Next Turn')
    expect(page).to have_content("Bob:1")
  end

end
