feature 'Loss' do
  scenario 'challenger move results in loss' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    sign_in_and_select_move
    expect(page).to have_content "Link chose rock Computer chose paper paper beats rock, Link defeated!"
  end
end
