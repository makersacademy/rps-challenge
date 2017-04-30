require './lib/game'

feature 'Entering name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs RosiePoSie')
  end
end

feature 'Gameplay' do
  scenario 'winning with rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content('Woo, rock beats scissors')
  end

  scenario 'winning with paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_on 'Paper'
    expect(page).to have_content('Woo, paper beats rock')
  end

  scenario 'winning with scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_on 'Scissors'
    expect(page).to have_content('Woo, scissors beats paper')
  end
end
