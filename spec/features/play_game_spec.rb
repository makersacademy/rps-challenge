feature 'Play Game' do
  scenario 'Player chooses rock, and the computer chooses paper' do
    allow(game).to receive_message_chain(:player, :weapon) {:paper}
    allow(game).to receive(:outcome).and_return("You lose!")
    allow(game).to receive(:message).and_return("Your beat your rock with paper. You lose!")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content(subject.message)
  end
end
