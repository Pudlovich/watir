# encoding: utf-8
module Watir
  class Image < HTMLElement

    alias_method :loaded?, :complete?

    #
    # returns the image's width in pixels
    #
    # @return [Integer] width
    #

    def width
      assert_exists
      driver.execute_script "return arguments[0].width", @element
    end

    #
    # returns the image's height in pixels
    #
    # @return [Integer] height
    #

    def height
      assert_exists
      driver.execute_script "return arguments[0].height", @element
    end

    def file_created_date
      assert_exists
      raise NotImplementedError
    end

    def file_size
      assert_exists
      raise NotImplementedError
    end

    def save(path)
      assert_exists
      raise NotImplementedError
    end

  end # Image
end # Watir