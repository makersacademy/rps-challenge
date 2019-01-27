feature 'Game Function:' do
  scenario '1. Player and CPU choose emoji' do
    allow_any_instance_of(CPU).to receive(:option).and_return('✌️')
    include sign_in
    click_button '✊'
    expect(page).to have_content 'Neville chooses ✊ and CPU chooses ✌️'
  end

  scenario '2. Should show who won the game' do
    allow_any_instance_of(CPU).to receive(:option).and_return('✌️')
    include sign_in
    click_button '✊'
    expect(page).to have_content "You win!"
  end
end
