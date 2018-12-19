feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content('Mario vs Luigi')
  end
end

feature 'User options' do
  scenario 'user is presented with the three options' do
    sign_in_and_play
    expect(page).to have_content("Mario vs Computer!\nChoose from these different options:\nrock paper scissors")
  end

  scenario 'user chooses one option' do
    sign_in_and_play
    page.choose('rock')
    click_button 'Submit'
    expect(page).to have_content('Mario chose rock. Let us see what the computer chooses!')
  end
end

feature 'Computer option' do
  let(:computer) { double :computer }
  scenario 'the computer generates an option automatically then a winner is decided' do
    allow(Computer).to receive(:new).and_return(computer)
    allow(computer).to receive(:random)
    allow(computer).to receive(:computer_choice).and_return('paper')
    sign_in_and_play
    page.choose('paper')
    click_button 'Submit'
    click_button 'Generate computer choice'
    expect(page).to have_content('Computer chose paper. It is a draw!')
  end
end
