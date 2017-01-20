feature 'Losing a game' do
  scenario 'Player 2 HP reaches zero' do
    sign_in_and_play
    19.times do
      attack_and_return
    end
    expect(page).to have_content('Ganon Loses!')
  end
end
