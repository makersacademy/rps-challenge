=begin
This was the initial testing to make sure the infrastructure works.
Yes, it works. I'll comment it out since we won't need this anymore.

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
=end
