feature 'sign in' do
  let(:name) { 'Bob Ross' }

  scenario 'player enters name' do
    sign_in(name)

    expect(page.find('#this-player .name')).to have_content name
  end
end