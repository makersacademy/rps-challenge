require './lib/game'

feature 'Entering name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs RosiePoSie')
  end
end

feature 'Gameplay' do
  scenario 'winning with rock' do
    sign_in_and_play
    click_on 'Rock'
    page.has_content?('Woo, rock beats scissors')
  end

  scenario 'losing with rock' do
    sign_in_and_play
    click_on 'Rock'
    page.has_content?('Uh oh, paper beats rock!')
  end

  scenario 'tying with rock' do
    sign_in_and_play
    click_on 'Rock'
    page.has_content?('Hmm, you both got rock...')
  end
end
