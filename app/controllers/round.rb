
get '/deck/:id/round' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.create(deck: @deck, user: current_user)
  session[:round_id] = @round.id
  cards = @deck.cards
  @card_display = cards.first
  #call method to display and go through cards in deck
  erb :'round/new'
end


post '/round' do
#   @guess = Guess.create(params[:guess])
#   current_card = Card.find_by(id: params[:guess][:card_id])
#   deck = current_card.deck
#   cards = deck.cards
#   round_id = session[:round_id]
#   @round = Round.find_by(id: round_id)

#   # binding.pry
# until @round.guesses.where(correct: true).length == deck.num_of_cards
#   #until @round.correct_answers_return == 2

#     if @guess.guess_name == current_card.answer
#       @guess.correct = true
#       @card_display = cards.rotate[0]
#       erb :'round/new'
#     else
#       @card_display = cards.rotate[0]
#       erb :'round/new'
#     end
#   end
#   #check answer call
  "Done"
end

get '/round/:id' do
   erb :'round/show'
end

