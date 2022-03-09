feature 'submitting names' do

  scenario 'view configuration' do
    visit '/'
    expect(page).to have_content('Player 1')
    expect(page).to have_content('Player 2')
    expect(page).to have_field('player_1')
    expect(page).to have_field('player_2')
    expect(page).to have_button('Play')
  end

  scenario 'page should submit names' do
    sign_in_and_play
    expect(page).to have_content('Lats v Cats')
  end
end