def fake_load path
  eval File.read(path)
  true
end