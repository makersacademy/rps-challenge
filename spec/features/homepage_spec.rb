describe 'A homepage', type: :feature do
  before { visit '/' }

  specify 'it has a title' do
    expect(page).to have_title 'RPS'
  end

  specify 'it has a heading' do
    expect(page).to have_selector('h1', text: "Rock Paper Scissors")
  end
end
