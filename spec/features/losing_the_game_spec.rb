require_relative '../../app'

feature 'The player loses the game' do
  scenario 'The player chooses rock and loses' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(Weapon.new(:paper))
    sign_in_and_play
    choose('Paper')
    click_button('Go!')
    expect(page).to have_content('Kye chose rock')
    expect(page).to have_content('Computer chose paper')
    expect(page).to have_content('Kye wins!')
  end

  scenario 'The player chooses paper and loses' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(Weapon.new(:scissors))
    sign_in_and_play
    choose('Rock')
    click_button('Go!')
    expect(page).to have_content('Kye chose paper')
    expect(page).to have_content('Computer chose scissors')
    expect(page).to have_content('Kye wins!')
  end

  scenario 'The player chooses scissors and loses' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(Weapon.new(:rock))
    sign_in_and_play
    choose('Rock')
    click_button('Go!')
    expect(page).to have_content('Kye chose scissors')
    expect(page).to have_content('Computer chose rock')
    expect(page).to have_content('Kye wins!')
  end
end
