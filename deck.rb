require 'card'
include Card

class Deck 
  
  def initialize
    
    @deck = []
    
   (1..8).each do |value|
     ['club', 'diamond', 'heart', 'spade'].each do |suit|
       @deck << Card.get_card(value, suit)
     end
   end
   
   (1..22).each do |value|
     @deck << Card.get_card(value, 'trump')
   end
 end
 
 def to_s
   names = []
   @deck.each do |card|
     names << card.to_s
   end
   return names.join(", ")
 end
 
 def sort!
   @deck = @deck.sort_by{|card|[card.suit, card.value]}
   return self
 end
end   
