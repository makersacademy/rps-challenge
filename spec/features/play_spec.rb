feature 'Play page' do
  scenario 'shows the available options' do
    visit '/play'

    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
