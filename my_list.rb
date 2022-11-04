class MyList
  include MyEnumerable

  def initialize(*list_items)
    @list = list_items
  end

  def each(&block)
    return 'empty block' unless block_given?

    @list.each { |element| block.call(element) }
  end
