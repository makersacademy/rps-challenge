feature 'When two people ar playing' do
  before(:each) do
    play_for_2
  end

  scenario 'p1 can select an option via the buttons' do
    click_button('Rock')
    expect(page).to have_content('P1: rock')
  end

  scenario 'p2 can select an option via the buttons' do
    click_button('Rock')
    expect(page).to have_content('P2: rock')
  end

  scenario 'p1 can select an option by texting in' do

  end

  scenario 'p2 can select an option by texting in' do

  end
end
