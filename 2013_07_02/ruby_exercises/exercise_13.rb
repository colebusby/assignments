h = {a:1, b:2, c:3, d:4, e:5}
h.delete_if { |key, value| value < 3.5 }