feature 'Setting up game' do
  scenario 'Player input their names' do
    setup
    expect(page).to have_content 'Jed vs The Computer'
  end
end

feature 'Setting up game' do
  scenario 'Player selects move' do
    setup
    click_on :Play!
    select('Rock')
    click_on 'Go'
    expect(page).to have_content("Jed has chosen Rock")
  end
end

feature 'Determining winner' do
  scenario "player selects rock and computer selects scissors" do
    srand(4)
    setup
    click_on :Play!
    select('Rock')
    click_on 'Go'
    expect(page).to have_content("Jed wins!")
  end
end
