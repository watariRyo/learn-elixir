{:ok, data} = File.read("bird.gif")

<<
  "GIF",
  _version::binary-size(3),
  width::16-little,
  height::16-little,
  _rest::binary
>> = data

IO.inspect({width, height})
