def my_collect(collection)
  i = 0
  while i < collection.length
    yield(collection[i])
    i += 1
  end
  collection
end

array = []
my_collect(array) do |name|
  name.split(" ").first
end
collection = []
my_collect(collection) do |lang|
  lang.upcase
end
