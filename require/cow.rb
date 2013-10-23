class Cow
  def say(message)
    IO.popen(['cowsay', message]) { |io| io.read }
  end
end


puts Cow.new.say("What does the fox says ? ( require )")