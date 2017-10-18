require "./bin"

module Gtk
  class SearchBar < Bin
    @gtk_search_bar : LibGtk::SearchBar*?
    def initialize(@gtk_search_bar : LibGtk::SearchBar*)
    end

    def to_unsafe
      @gtk_search_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def search_mode_enabled
      __return_value = LibGtk.search_bar_get_search_mode_enabled(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.search_bar_get_show_close_button(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.search_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def connect_entry(entry)
      LibGtk.search_bar_connect_entry(to_unsafe.as(LibGtk::SearchBar*), entry.to_unsafe.as(LibGtk::Entry*))
      nil
    end

    def search_mode
      __return_value = LibGtk.search_bar_get_search_mode(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.search_bar_get_show_close_button(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def handle_event(event)
      __return_value = LibGtk.search_bar_handle_event(to_unsafe.as(LibGtk::SearchBar*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def search_mode=(search_mode)
      LibGtk.search_bar_set_search_mode(to_unsafe.as(LibGtk::SearchBar*), search_mode)
      nil
    end

    def show_close_button=(visible)
      LibGtk.search_bar_set_show_close_button(to_unsafe.as(LibGtk::SearchBar*), visible)
      nil
    end

  end
end

