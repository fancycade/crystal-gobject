require "./menu_item"

module Gtk
  class ImageMenuItem < MenuItem
    @gtk_image_menu_item : LibGtk::ImageMenuItem*?
    def initialize(@gtk_image_menu_item : LibGtk::ImageMenuItem*)
    end

    def to_unsafe
      @gtk_image_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable

    def always_show_image
      __return_value = LibGtk.image_menu_item_get_always_show_image(to_unsafe.as(LibGtk::ImageMenuItem*))
      __return_value
    end

    def image
      __return_value = LibGtk.image_menu_item_get_image(to_unsafe.as(LibGtk::ImageMenuItem*))
      Gtk::Widget.new(__return_value)
    end

    def use_stock
      __return_value = LibGtk.image_menu_item_get_use_stock(to_unsafe.as(LibGtk::ImageMenuItem*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.image_menu_item_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_stock(stock_id, accel_group) : self
      __return_value = LibGtk.image_menu_item_new_from_stock(stock_id.to_unsafe, accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label) : self
      __return_value = LibGtk.image_menu_item_new_with_label(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.image_menu_item_new_with_mnemonic(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def always_show_image
      __return_value = LibGtk.image_menu_item_get_always_show_image(to_unsafe.as(LibGtk::ImageMenuItem*))
      __return_value
    end

    def image
      __return_value = LibGtk.image_menu_item_get_image(to_unsafe.as(LibGtk::ImageMenuItem*))
      Gtk::Widget.new(__return_value)
    end

    def use_stock
      __return_value = LibGtk.image_menu_item_get_use_stock(to_unsafe.as(LibGtk::ImageMenuItem*))
      __return_value
    end

    def accel_group=(accel_group)
      LibGtk.image_menu_item_set_accel_group(to_unsafe.as(LibGtk::ImageMenuItem*), accel_group.to_unsafe.as(LibGtk::AccelGroup*))
      nil
    end

    def always_show_image=(always_show)
      LibGtk.image_menu_item_set_always_show_image(to_unsafe.as(LibGtk::ImageMenuItem*), always_show)
      nil
    end

    def image=(image)
      LibGtk.image_menu_item_set_image(to_unsafe.as(LibGtk::ImageMenuItem*), image ? image.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def use_stock=(use_stock)
      LibGtk.image_menu_item_set_use_stock(to_unsafe.as(LibGtk::ImageMenuItem*), use_stock)
      nil
    end

  end
end

