feature 'Play game' do

  scenario 'entering move' do
    setup
    expect(page).to have_select 'moves'
  end

  scenario 'submitting info' do
    setup
    expect(page).to have_select 'moves'
  end

  scenario 'enters move' do
    setup
    expect(page).to have_button('Shoot!')
  end
end
