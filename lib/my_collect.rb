def my_collect(placeholder)
  i = 0
  return_value = []
  while i < placeholder.length
    return_value << yield(placeholder[i])
    i += 1
  end
  return_value
end

array = []
my_collect(array) do |name|
  name.split(" ").first
end
collection = []
my_collect(collection) do |lang|
  lang.upcase
end
