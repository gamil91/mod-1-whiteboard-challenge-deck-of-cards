require 'pry'
class Deck

    attr_reader :cards
    
    def initialize
        @cards = []
        for suits in ["Hearts", "Spades", "Clovers", "Diamonds"] do  
            for ranks in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
                @cards << Card.new(suits, ranks)
            end
        end
    end
    
    def choose_card
        self.cards.delete_at(rand(self.cards.length))
    end

end




class Card

    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
