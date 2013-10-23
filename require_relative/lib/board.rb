class Board
  def self.beautify(&block)
    puts "." * 30
    puts block.call
    puts "." * 30
  end
end