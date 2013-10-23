class Cow
  def self.say(message)
    Board.beautify do 
      IO.popen(['cowsay', message]) { |io| io.read }
    end
  end
end