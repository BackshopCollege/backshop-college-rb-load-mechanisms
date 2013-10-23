$consts = Hash.new

module Kernel
  def fake_autoload(constant_name, file_name)
    $consts[constant_name] = file_name
  end
end

#todo objeto herda de Object.
# const_missing vai ser invocado quando não encontra uma determinada constante
def Object.const_missing(const)
  load $consts[const]
  const_get(const)
end