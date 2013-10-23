class Cow
  def say(message)
    IO.popen(['cowsay', message]) { |io| io.read }
  end
end