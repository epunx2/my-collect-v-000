def my_collect(placeholder)
  i = 0
  while i < placeholder.length
    placeholder << yield(placeholder[i])
    i += 1
  end
  placeholder
end

array = []
my_collect(array) do |name|
  name.split(" ").first
end
collection = []
my_collect(collection) do |lang|
  lang.upcase
end
