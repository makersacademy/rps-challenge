feature 'Game Function:' do
  scenario '1. Player and CPU choose emoji' do
    include sign_in
    click_button '✊'
    allow(CPU.new).to receive(:option).and_return('✌️')
    expect(page).to have_content 'Player chooses ✊ and CPU chooses ✌️'
  end
end
