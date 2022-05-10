feature 'users can input their choice of action' do
  before(:each) { players_sign_in("Luke", "Kirsty")}

  scenario 'user clicks on rock, oppenent selects scissors' do
    click_on 'rock'
    click_on 'scissors'
    expect(page).to have_content "Luke's rock smashes Kirsty's scissors"
  end

  scenario 'user clicks on paper, oppenent selects rock' do
    click_on 'paper'
    click_on 'rock'
    expect(page).to have_content "Luke's paper wraps Kirsty's rock"
  end

  scenario 'user click on scissors, oppenent selects paper' do 
    click_on 'scissors'
    click_on 'paper'
    expect(page).to have_content "Luke's scissors cuts Kirsty's paper"
  end

  scenario 'user clicks on paper, opponent selects paper' do
    click_on 'paper'
    click_on 'paper'
    expect(page).to have_content "Luke's paper draws with Kirsty's paper"
  end
end