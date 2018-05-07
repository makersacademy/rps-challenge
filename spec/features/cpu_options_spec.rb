feature 'Testing the random cpu move' do
  scenario 'page shows rock has been selected' do
    sign_in_and_play
    select 'Rock', from: 'move'
    visit('/result')
    allow(Kernel).to receive(:rand).and_return(0)
    expect(page).to have_content("The computer's move was Rock")
  end
end
