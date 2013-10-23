class Cow
  #adicionar o puts e reload para mostrar que nao faz cache das classes
  def self.say(message)
    IO.popen(['cowsay', message]) { |io| io.read }
  end
end

Cow.say('what does the FOX says ?')