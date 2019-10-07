feature 'result' do

  before do
    visit '/'
    page.fill_in 'name', with: 'Luca'
    expect(page).to have_content 'Choose your weapon!'
    expect(page).to have_content 'Rock, Paper or Scissors?'
    click_on 'Play!'
  end

  scenario 'highlights the fact that the player made a typo' do
    visit '/onejob'
    expect(page).to have_content 'You had one job, Luca'
  end
end
