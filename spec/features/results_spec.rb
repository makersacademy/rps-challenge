require_relative 'web_helpers'
feature 'results' do

  scenario 'computer selects rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer chose rock"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer chose paper"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer chose scissors"
  end

  # scenario 'game shows lose' do
  #   allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
  #   sign_in_and_play
  #   click_button('scissors')
  #   expect(page).to have_content "You lost!"
  # end
  #
  # scenario 'game shows win' do
  #   allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
  #   sign_in_and_play
  #   click_button('paper')
  #   expect(page).to have_content "You win!"
  # end
  #
  # scenario 'game shows draw' do
  #   allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
  #   sign_in_and_play
  #   click_button('rock')
  #   expect(page).to have_content "You drew!"
  # end
 end
