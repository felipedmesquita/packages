require_relative "../lib/package"
class PackageTest < TLDR
  def test_item
    item = Item.new(3, 5, 10)
    assert_equal 3, item.dimension_3
  end

  def test_package
    items = [Item.new(3, 5, 10), Item.new(2, 4, 6)]
    package = Package.new(items)
    assert_equal 10, package.height
    assert_equal 5, package.width
    assert_equal 5, package.length
  end

  def test_mouse_pad_and_display
    items = [Item.new(0.3, 10, 10), Item.new(40, 60, 6)]
    package = Package.new(items)
    assert_equal 60, package.height
    assert_equal 40, package.width
    assert_equal 6.3, package.length
  end

  def test_many_items
    items = [Item.new(3, 5, 10), Item.new(2, 4, 6), Item.new(1, 2, 3)]
    package = Package.new(items)
    assert_equal 10, package.height
    assert_equal 5, package.width
    assert_equal 6, package.length
  end
end
