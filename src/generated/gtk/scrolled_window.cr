require "./bin"

module Gtk
  class ScrolledWindow < Bin
    @gtk_scrolled_window : LibGtk::ScrolledWindow*?
    def initialize(@gtk_scrolled_window : LibGtk::ScrolledWindow*)
    end

    def to_unsafe
      @gtk_scrolled_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def hadjustment
      __return_value = LibGtk.scrolled_window_get_hadjustment(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def hscrollbar_policy
      __return_value = LibGtk.scrolled_window_get_hscrollbar_policy(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def kinetic_scrolling
      __return_value = LibGtk.scrolled_window_get_kinetic_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_height
      __return_value = LibGtk.scrolled_window_get_max_content_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_width
      __return_value = LibGtk.scrolled_window_get_max_content_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_height
      __return_value = LibGtk.scrolled_window_get_min_content_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_width
      __return_value = LibGtk.scrolled_window_get_min_content_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def overlay_scrolling
      __return_value = LibGtk.scrolled_window_get_overlay_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def propagate_natural_height
      __return_value = LibGtk.scrolled_window_get_propagate_natural_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def propagate_natural_width
      __return_value = LibGtk.scrolled_window_get_propagate_natural_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.scrolled_window_get_shadow_type(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.scrolled_window_get_vadjustment(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def vscrollbar_policy
      __return_value = LibGtk.scrolled_window_get_vscrollbar_policy(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def window_placement
      __return_value = LibGtk.scrolled_window_get_window_placement(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def window_placement_set
      __return_value = LibGtk.scrolled_window_get_window_placement_set(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def self.new(hadjustment, vadjustment) : self
      __return_value = LibGtk.scrolled_window_new(hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def add_with_viewport(child)
      LibGtk.scrolled_window_add_with_viewport(to_unsafe.as(LibGtk::ScrolledWindow*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def capture_button_press
      __return_value = LibGtk.scrolled_window_get_capture_button_press(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.scrolled_window_get_hadjustment(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def hscrollbar
      __return_value = LibGtk.scrolled_window_get_hscrollbar(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def kinetic_scrolling
      __return_value = LibGtk.scrolled_window_get_kinetic_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_height
      __return_value = LibGtk.scrolled_window_get_max_content_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_width
      __return_value = LibGtk.scrolled_window_get_max_content_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_height
      __return_value = LibGtk.scrolled_window_get_min_content_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_width
      __return_value = LibGtk.scrolled_window_get_min_content_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def overlay_scrolling
      __return_value = LibGtk.scrolled_window_get_overlay_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def placement
      __return_value = LibGtk.scrolled_window_get_placement(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def policy(hscrollbar_policy : Gtk::PolicyType?, vscrollbar_policy : Gtk::PolicyType?)
      LibGtk.scrolled_window_get_policy(to_unsafe.as(LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      nil
    end

    def propagate_natural_height
      __return_value = LibGtk.scrolled_window_get_propagate_natural_height(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def propagate_natural_width
      __return_value = LibGtk.scrolled_window_get_propagate_natural_width(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.scrolled_window_get_shadow_type(to_unsafe.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.scrolled_window_get_vadjustment(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def vscrollbar
      __return_value = LibGtk.scrolled_window_get_vscrollbar(to_unsafe.as(LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def capture_button_press=(capture_button_press)
      LibGtk.scrolled_window_set_capture_button_press(to_unsafe.as(LibGtk::ScrolledWindow*), capture_button_press)
      nil
    end

    def hadjustment=(hadjustment)
      LibGtk.scrolled_window_set_hadjustment(to_unsafe.as(LibGtk::ScrolledWindow*), hadjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def kinetic_scrolling=(kinetic_scrolling)
      LibGtk.scrolled_window_set_kinetic_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*), kinetic_scrolling)
      nil
    end

    def max_content_height=(height)
      LibGtk.scrolled_window_set_max_content_height(to_unsafe.as(LibGtk::ScrolledWindow*), Int32.new(height))
      nil
    end

    def max_content_width=(width)
      LibGtk.scrolled_window_set_max_content_width(to_unsafe.as(LibGtk::ScrolledWindow*), Int32.new(width))
      nil
    end

    def min_content_height=(height)
      LibGtk.scrolled_window_set_min_content_height(to_unsafe.as(LibGtk::ScrolledWindow*), Int32.new(height))
      nil
    end

    def min_content_width=(width)
      LibGtk.scrolled_window_set_min_content_width(to_unsafe.as(LibGtk::ScrolledWindow*), Int32.new(width))
      nil
    end

    def overlay_scrolling=(overlay_scrolling)
      LibGtk.scrolled_window_set_overlay_scrolling(to_unsafe.as(LibGtk::ScrolledWindow*), overlay_scrolling)
      nil
    end

    def placement=(window_placement : Gtk::CornerType)
      LibGtk.scrolled_window_set_placement(to_unsafe.as(LibGtk::ScrolledWindow*), window_placement)
      nil
    end

    def set_policy(hscrollbar_policy : Gtk::PolicyType, vscrollbar_policy : Gtk::PolicyType)
      LibGtk.scrolled_window_set_policy(to_unsafe.as(LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      nil
    end

    def propagate_natural_height=(propagate)
      LibGtk.scrolled_window_set_propagate_natural_height(to_unsafe.as(LibGtk::ScrolledWindow*), propagate)
      nil
    end

    def propagate_natural_width=(propagate)
      LibGtk.scrolled_window_set_propagate_natural_width(to_unsafe.as(LibGtk::ScrolledWindow*), propagate)
      nil
    end

    def shadow_type=(type : Gtk::ShadowType)
      LibGtk.scrolled_window_set_shadow_type(to_unsafe.as(LibGtk::ScrolledWindow*), type)
      nil
    end

    def vadjustment=(vadjustment)
      LibGtk.scrolled_window_set_vadjustment(to_unsafe.as(LibGtk::ScrolledWindow*), vadjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def unset_placement
      LibGtk.scrolled_window_unset_placement(to_unsafe.as(LibGtk::ScrolledWindow*))
      nil
    end

    alias EdgeOvershotSignal = ScrolledWindow, Gtk::PositionType ->
    def on_edge_overshot(&__block : EdgeOvershotSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::PositionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("edge-overshot", __callback)
    end

    alias EdgeReachedSignal = ScrolledWindow, Gtk::PositionType ->
    def on_edge_reached(&__block : EdgeReachedSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::PositionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("edge-reached", __callback)
    end

    alias MoveFocusOutSignal = ScrolledWindow, Gtk::DirectionType ->
    def on_move_focus_out(&__block : MoveFocusOutSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("move-focus-out", __callback)
    end

    alias ScrollChildSignal = ScrolledWindow, Gtk::ScrollType, Bool -> Bool
    def on_scroll_child(&__block : ScrollChildSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::ScrollType*, _arg2 : LibGtk::Bool*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("scroll-child", __callback)
    end

  end
end

