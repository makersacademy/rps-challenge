feature 'checking & displaying results' do
  before do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
  end

  scenario 'choosing rock' do
    sign_in_and_play
    click_link('Rock')
    expect(page).to have_content('draw')
  end

  scenario 'choosing paper' do
    sign_in_and_play
    click_link('paper')
    expect(page).to have_content('won')
  end

  scenario 'choosing scissors' do
    sign_in_and_play
    click_link('scissors')
    expect(page).to have_content('lost')
  end

  scenario 'showing current and computers selection' do
    sign_in_and_play
    click_link('Rock')
    expect(page).to have_content('rock vs. rock')
  end

end
