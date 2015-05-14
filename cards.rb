require 'pry'
require 'set'

# module IronYardGames
  class Card

  RANKS = (2..10).to_a + [:J, :Q, :K, :A]
  SUITS = [:diamonds, :clubs, :spades, :hearts]

  RANK_VALUES = {J: 11, Q: 12, K: 13, A: 14}

  # attr_reader :rank
  # attr_writer :rank
  attr_accessor :rank, :suit
  include Comparable

  def initialize(rank=nil, suit=nil)
    @rank = rank || RANKS.sample
    @suit = suit || SUITS.sample
  end

  def value
    val = RANK_VALUES[self.rank]
    val ||= self.rank
  end

  def <=>(other)
    self.value <=> other.value
  end

  end

  class Deck

    RANKS = (2..10).to_a + [:J, :Q, :K, :A]
    SUITS = [:diamonds, :clubs, :spades, :hearts]
    CARD = RANKS.product(SUITS)

    include Enumerable

    def initialize()
      @deck = CARD.map {|x| Card.new(x[0], x[1])}
    end

    def peek
      @deck = CARD.map {|x| Card.new(x[0], x[1])}.first
    end

    def shuffle
      @deck = CARD.map {|x| Card.new(x[0], x[1])}.shuffle
    end

    def each
      @deck.each {|x| yield x}
    end
    binding.pryD
end

binding.pry
