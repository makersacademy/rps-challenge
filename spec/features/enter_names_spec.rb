

feature '/' do
  scenario 'visits page' do
    visit('/')
    expect(page).to have_text('Enter names')
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('Ross')
  end
end

xfeature 'Returns rock paper or scissors' do
  scenario 'push play button' do
    sign_in_and_play
    click_button('Play')
    allow(Kernel).to receive(:rand).and_return(0)
    expect(page).to have_content(['Scissors', 'Rock', 'Paper'][0])
  end
end
