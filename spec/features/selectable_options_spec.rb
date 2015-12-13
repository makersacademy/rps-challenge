feature 'Selectable options' do
  scenario 'rock should be a selectable option' do
    single_player_login
    expect(page).to have_field 'rock'
  end

  scenario 'paper should be a selectable option' do
    single_player_login
    expect(page).to have_field 'paper'
  end

  scenario 'scissors should be a selectable option' do
    single_player_login
    expect(page).to have_field 'scissors'
  end

  scenario 'spock should be a selectable option' do
    single_player_login
    expect(page).to have_field 'spock'
  end

  scenario 'lizards should be a selectable option' do
    single_player_login
    expect(page).to have_field 'lizard'
  end
end
