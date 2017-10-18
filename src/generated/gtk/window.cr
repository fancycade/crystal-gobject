require "./bin"

module Gtk
  class Window < Bin
    @gtk_window : LibGtk::Window*?
    def initialize(@gtk_window : LibGtk::Window*)
    end

    def to_unsafe
      @gtk_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def accept_focus
      __return_value = LibGtk.window_get_accept_focus(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def application
      __return_value = LibGtk.window_get_application(to_unsafe.as(LibGtk::Window*))
      Gtk::Application.new(__return_value)
    end

    def attached_to
      __return_value = LibGtk.window_get_attached_to(to_unsafe.as(LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

    def decorated
      __return_value = LibGtk.window_get_decorated(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def default_height
      __return_value = LibGtk.window_get_default_height(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def default_width
      __return_value = LibGtk.window_get_default_width(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def deletable
      __return_value = LibGtk.window_get_deletable(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def destroy_with_parent
      __return_value = LibGtk.window_get_destroy_with_parent(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def focus_on_map
      __return_value = LibGtk.window_get_focus_on_map(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def focus_visible
      __return_value = LibGtk.window_get_focus_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def gravity
      __return_value = LibGtk.window_get_gravity(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def has_resize_grip
      __return_value = LibGtk.window_get_has_resize_grip(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def has_toplevel_focus
      __return_value = LibGtk.window_get_has_toplevel_focus(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def hide_titlebar_when_maximized
      __return_value = LibGtk.window_get_hide_titlebar_when_maximized(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def icon
      __return_value = LibGtk.window_get_icon(to_unsafe.as(LibGtk::Window*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def icon_name
      __return_value = LibGtk.window_get_icon_name(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def is_active
      __return_value = LibGtk.window_get_is_active(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def is_maximized
      __return_value = LibGtk.window_get_is_maximized(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def mnemonics_visible
      __return_value = LibGtk.window_get_mnemonics_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def modal
      __return_value = LibGtk.window_get_modal(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def resizable
      __return_value = LibGtk.window_get_resizable(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def resize_grip_visible
      __return_value = LibGtk.window_get_resize_grip_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def role
      __return_value = LibGtk.window_get_role(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def screen
      __return_value = LibGtk.window_get_screen(to_unsafe.as(LibGtk::Window*))
      Gdk::Screen.new(__return_value)
    end

    def skip_pager_hint
      __return_value = LibGtk.window_get_skip_pager_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def skip_taskbar_hint
      __return_value = LibGtk.window_get_skip_taskbar_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end


    def title
      __return_value = LibGtk.window_get_title(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def transient_for
      __return_value = LibGtk.window_get_transient_for(to_unsafe.as(LibGtk::Window*))
      Gtk::Window.new(__return_value)
    end

    def type
      __return_value = LibGtk.window_get_type(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def type_hint
      __return_value = LibGtk.window_get_type_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def urgency_hint
      __return_value = LibGtk.window_get_urgency_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def window_position
      __return_value = LibGtk.window_get_window_position(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def self.new(type : Gtk::WindowType) : self
      __return_value = LibGtk.window_new(type)
      cast Gtk::Widget.new(__return_value)
    end

    def self.default_icon_list
      __return_value = LibGtk.window_get_default_icon_list
      GLib::ListIterator(GdkPixbuf::Pixbuf, LibGdkPixbuf::Pixbuf*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.default_icon_name
      __return_value = LibGtk.window_get_default_icon_name
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.list_toplevels
      __return_value = LibGtk.window_list_toplevels
      GLib::ListIterator(Gtk::Widget, LibGtk::Widget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.set_auto_startup_notification(setting)
      LibGtk.window_set_auto_startup_notification(setting)
      nil
    end

    def self.set_default_icon(icon)
      LibGtk.window_set_default_icon(icon.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def self.default_icon_from_file=(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.window_set_default_icon_from_file(filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.set_default_icon_list(list)
      LibGtk.window_set_default_icon_list(list)
      nil
    end

    def self.set_default_icon_name(name)
      LibGtk.window_set_default_icon_name(name.to_unsafe)
      nil
    end

    def self.set_interactive_debugging(enable)
      LibGtk.window_set_interactive_debugging(enable)
      nil
    end

    def activate_default
      __return_value = LibGtk.window_activate_default(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def activate_focus
      __return_value = LibGtk.window_activate_focus(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def activate_key(event)
      __return_value = LibGtk.window_activate_key(to_unsafe.as(LibGtk::Window*), event.to_unsafe.as(LibGdk::EventKey*))
      __return_value
    end

    def add_accel_group(accel_group)
      LibGtk.window_add_accel_group(to_unsafe.as(LibGtk::Window*), accel_group.to_unsafe.as(LibGtk::AccelGroup*))
      nil
    end

    def add_mnemonic(keyval, target)
      LibGtk.window_add_mnemonic(to_unsafe.as(LibGtk::Window*), UInt32.new(keyval), target.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def begin_move_drag(button, root_x, root_y, timestamp)
      LibGtk.window_begin_move_drag(to_unsafe.as(LibGtk::Window*), Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def begin_resize_drag(edge : Gdk::WindowEdge, button, root_x, root_y, timestamp)
      LibGtk.window_begin_resize_drag(to_unsafe.as(LibGtk::Window*), edge, Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def close
      LibGtk.window_close(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def deiconify
      LibGtk.window_deiconify(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def fullscreen
      LibGtk.window_fullscreen(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def fullscreen_on_monitor(screen, monitor)
      LibGtk.window_fullscreen_on_monitor(to_unsafe.as(LibGtk::Window*), screen.to_unsafe.as(LibGdk::Screen*), Int32.new(monitor))
      nil
    end

    def accept_focus
      __return_value = LibGtk.window_get_accept_focus(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def application
      __return_value = LibGtk.window_get_application(to_unsafe.as(LibGtk::Window*))
      Gtk::Application.new(__return_value) if __return_value
    end

    def attached_to
      __return_value = LibGtk.window_get_attached_to(to_unsafe.as(LibGtk::Window*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def decorated
      __return_value = LibGtk.window_get_decorated(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def default_size(width, height)
      LibGtk.window_get_default_size(to_unsafe.as(LibGtk::Window*), width, height)
      nil
    end

    def default_widget
      __return_value = LibGtk.window_get_default_widget(to_unsafe.as(LibGtk::Window*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def deletable
      __return_value = LibGtk.window_get_deletable(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def destroy_with_parent
      __return_value = LibGtk.window_get_destroy_with_parent(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def focus
      __return_value = LibGtk.window_get_focus(to_unsafe.as(LibGtk::Window*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def focus_on_map
      __return_value = LibGtk.window_get_focus_on_map(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def focus_visible
      __return_value = LibGtk.window_get_focus_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def gravity
      __return_value = LibGtk.window_get_gravity(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def group
      __return_value = LibGtk.window_get_group(to_unsafe.as(LibGtk::Window*))
      Gtk::WindowGroup.new(__return_value)
    end

    def has_resize_grip
      __return_value = LibGtk.window_get_has_resize_grip(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def hide_titlebar_when_maximized
      __return_value = LibGtk.window_get_hide_titlebar_when_maximized(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def icon
      __return_value = LibGtk.window_get_icon(to_unsafe.as(LibGtk::Window*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def icon_list
      __return_value = LibGtk.window_get_icon_list(to_unsafe.as(LibGtk::Window*))
      GLib::ListIterator(GdkPixbuf::Pixbuf, LibGdkPixbuf::Pixbuf*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def icon_name
      __return_value = LibGtk.window_get_icon_name(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def mnemonic_modifier
      __return_value = LibGtk.window_get_mnemonic_modifier(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def mnemonics_visible
      __return_value = LibGtk.window_get_mnemonics_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def modal
      __return_value = LibGtk.window_get_modal(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def opacity
      __return_value = LibGtk.window_get_opacity(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def position(root_x, root_y)
      LibGtk.window_get_position(to_unsafe.as(LibGtk::Window*), root_x, root_y)
      nil
    end

    def resizable
      __return_value = LibGtk.window_get_resizable(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def resize_grip_area(rect)
      __return_value = LibGtk.window_get_resize_grip_area(to_unsafe.as(LibGtk::Window*), rect)
      __return_value
    end

    def role
      __return_value = LibGtk.window_get_role(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def screen
      __return_value = LibGtk.window_get_screen(to_unsafe.as(LibGtk::Window*))
      Gdk::Screen.new(__return_value)
    end

    def size(width, height)
      LibGtk.window_get_size(to_unsafe.as(LibGtk::Window*), width, height)
      nil
    end

    def skip_pager_hint
      __return_value = LibGtk.window_get_skip_pager_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def skip_taskbar_hint
      __return_value = LibGtk.window_get_skip_taskbar_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def title
      __return_value = LibGtk.window_get_title(to_unsafe.as(LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def titlebar
      __return_value = LibGtk.window_get_titlebar(to_unsafe.as(LibGtk::Window*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def transient_for
      __return_value = LibGtk.window_get_transient_for(to_unsafe.as(LibGtk::Window*))
      Gtk::Window.new(__return_value) if __return_value
    end

    def type_hint
      __return_value = LibGtk.window_get_type_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def urgency_hint
      __return_value = LibGtk.window_get_urgency_hint(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def window_type
      __return_value = LibGtk.window_get_window_type(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def has_group
      __return_value = LibGtk.window_has_group(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def has_toplevel_focus
      __return_value = LibGtk.window_has_toplevel_focus(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def iconify
      LibGtk.window_iconify(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def active?
      __return_value = LibGtk.window_is_active(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def maximized?
      __return_value = LibGtk.window_is_maximized(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def maximize
      LibGtk.window_maximize(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def mnemonic_activate(keyval, modifier : Gdk::ModifierType)
      __return_value = LibGtk.window_mnemonic_activate(to_unsafe.as(LibGtk::Window*), UInt32.new(keyval), modifier)
      __return_value
    end

    def move(x, y)
      LibGtk.window_move(to_unsafe.as(LibGtk::Window*), Int32.new(x), Int32.new(y))
      nil
    end

    def parse_geometry(geometry)
      __return_value = LibGtk.window_parse_geometry(to_unsafe.as(LibGtk::Window*), geometry.to_unsafe)
      __return_value
    end

    def present
      LibGtk.window_present(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def present_with_time(timestamp)
      LibGtk.window_present_with_time(to_unsafe.as(LibGtk::Window*), UInt32.new(timestamp))
      nil
    end

    def propagate_key_event(event)
      __return_value = LibGtk.window_propagate_key_event(to_unsafe.as(LibGtk::Window*), event.to_unsafe.as(LibGdk::EventKey*))
      __return_value
    end

    def remove_accel_group(accel_group)
      LibGtk.window_remove_accel_group(to_unsafe.as(LibGtk::Window*), accel_group.to_unsafe.as(LibGtk::AccelGroup*))
      nil
    end

    def remove_mnemonic(keyval, target)
      LibGtk.window_remove_mnemonic(to_unsafe.as(LibGtk::Window*), UInt32.new(keyval), target.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def reshow_with_initial_size
      LibGtk.window_reshow_with_initial_size(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def resize(width, height)
      LibGtk.window_resize(to_unsafe.as(LibGtk::Window*), Int32.new(width), Int32.new(height))
      nil
    end

    def resize_grip_is_visible
      __return_value = LibGtk.window_resize_grip_is_visible(to_unsafe.as(LibGtk::Window*))
      __return_value
    end

    def resize_to_geometry(width, height)
      LibGtk.window_resize_to_geometry(to_unsafe.as(LibGtk::Window*), Int32.new(width), Int32.new(height))
      nil
    end

    def accept_focus=(setting)
      LibGtk.window_set_accept_focus(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def application=(application)
      LibGtk.window_set_application(to_unsafe.as(LibGtk::Window*), application ? application.to_unsafe.as(LibGtk::Application*) : nil)
      nil
    end

    def attached_to=(attach_widget)
      LibGtk.window_set_attached_to(to_unsafe.as(LibGtk::Window*), attach_widget ? attach_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def decorated=(setting)
      LibGtk.window_set_decorated(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def default=(default_widget)
      LibGtk.window_set_default(to_unsafe.as(LibGtk::Window*), default_widget ? default_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def set_default_geometry(width, height)
      LibGtk.window_set_default_geometry(to_unsafe.as(LibGtk::Window*), Int32.new(width), Int32.new(height))
      nil
    end

    def set_default_size(width, height)
      LibGtk.window_set_default_size(to_unsafe.as(LibGtk::Window*), Int32.new(width), Int32.new(height))
      nil
    end

    def deletable=(setting)
      LibGtk.window_set_deletable(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def destroy_with_parent=(setting)
      LibGtk.window_set_destroy_with_parent(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def focus=(focus)
      LibGtk.window_set_focus(to_unsafe.as(LibGtk::Window*), focus ? focus.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def focus_on_map=(setting)
      LibGtk.window_set_focus_on_map(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def focus_visible=(setting)
      LibGtk.window_set_focus_visible(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def set_geometry_hints(geometry_widget, geometry, geom_mask : Gdk::WindowHints)
      LibGtk.window_set_geometry_hints(to_unsafe.as(LibGtk::Window*), geometry_widget ? geometry_widget.to_unsafe.as(LibGtk::Widget*) : nil, geometry ? geometry.to_unsafe.as(LibGdk::Geometry*) : nil, geom_mask)
      nil
    end

    def gravity=(gravity : Gdk::Gravity)
      LibGtk.window_set_gravity(to_unsafe.as(LibGtk::Window*), gravity)
      nil
    end

    def has_resize_grip=(value)
      LibGtk.window_set_has_resize_grip(to_unsafe.as(LibGtk::Window*), value)
      nil
    end

    def has_user_ref_count=(setting)
      LibGtk.window_set_has_user_ref_count(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def hide_titlebar_when_maximized=(setting)
      LibGtk.window_set_hide_titlebar_when_maximized(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def icon=(icon)
      LibGtk.window_set_icon(to_unsafe.as(LibGtk::Window*), icon ? icon.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_icon_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.window_set_icon_from_file(to_unsafe.as(LibGtk::Window*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def icon_list=(list)
      LibGtk.window_set_icon_list(to_unsafe.as(LibGtk::Window*), list)
      nil
    end

    def icon_name=(name)
      LibGtk.window_set_icon_name(to_unsafe.as(LibGtk::Window*), name ? name.to_unsafe : nil)
      nil
    end

    def keep_above=(setting)
      LibGtk.window_set_keep_above(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def keep_below=(setting)
      LibGtk.window_set_keep_below(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def mnemonic_modifier=(modifier : Gdk::ModifierType)
      LibGtk.window_set_mnemonic_modifier(to_unsafe.as(LibGtk::Window*), modifier)
      nil
    end

    def mnemonics_visible=(setting)
      LibGtk.window_set_mnemonics_visible(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def modal=(modal)
      LibGtk.window_set_modal(to_unsafe.as(LibGtk::Window*), modal)
      nil
    end

    def opacity=(opacity)
      LibGtk.window_set_opacity(to_unsafe.as(LibGtk::Window*), Float64.new(opacity))
      nil
    end

    def position=(position : Gtk::WindowPosition)
      LibGtk.window_set_position(to_unsafe.as(LibGtk::Window*), position)
      nil
    end

    def resizable=(resizable)
      LibGtk.window_set_resizable(to_unsafe.as(LibGtk::Window*), resizable)
      nil
    end

    def role=(role)
      LibGtk.window_set_role(to_unsafe.as(LibGtk::Window*), role.to_unsafe)
      nil
    end

    def screen=(screen)
      LibGtk.window_set_screen(to_unsafe.as(LibGtk::Window*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def skip_pager_hint=(setting)
      LibGtk.window_set_skip_pager_hint(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def skip_taskbar_hint=(setting)
      LibGtk.window_set_skip_taskbar_hint(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def startup_id=(startup_id)
      LibGtk.window_set_startup_id(to_unsafe.as(LibGtk::Window*), startup_id.to_unsafe)
      nil
    end

    def title=(title)
      LibGtk.window_set_title(to_unsafe.as(LibGtk::Window*), title.to_unsafe)
      nil
    end

    def titlebar=(titlebar)
      LibGtk.window_set_titlebar(to_unsafe.as(LibGtk::Window*), titlebar ? titlebar.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def transient_for=(parent)
      LibGtk.window_set_transient_for(to_unsafe.as(LibGtk::Window*), parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      nil
    end

    def type_hint=(hint : Gdk::WindowTypeHint)
      LibGtk.window_set_type_hint(to_unsafe.as(LibGtk::Window*), hint)
      nil
    end

    def urgency_hint=(setting)
      LibGtk.window_set_urgency_hint(to_unsafe.as(LibGtk::Window*), setting)
      nil
    end

    def set_wmclass(wmclass_name, wmclass_class)
      LibGtk.window_set_wmclass(to_unsafe.as(LibGtk::Window*), wmclass_name.to_unsafe, wmclass_class.to_unsafe)
      nil
    end

    def stick
      LibGtk.window_stick(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def unfullscreen
      LibGtk.window_unfullscreen(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def unmaximize
      LibGtk.window_unmaximize(to_unsafe.as(LibGtk::Window*))
      nil
    end

    def unstick
      LibGtk.window_unstick(to_unsafe.as(LibGtk::Window*))
      nil
    end

    alias ActivateDefaultSignal = Window ->
    def on_activate_default(&__block : ActivateDefaultSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("activate-default", __callback)
    end

    alias ActivateFocusSignal = Window ->
    def on_activate_focus(&__block : ActivateFocusSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("activate-focus", __callback)
    end

    alias EnableDebuggingSignal = Window, Bool -> Bool
    def on_enable_debugging(&__block : EnableDebuggingSignal)
      __callback = ->(_arg0 : LibGtk::Window*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Window.new(_arg0), _arg1)
       __return_value
      }
      connect("enable-debugging", __callback)
    end

    alias KeysChangedSignal = Window ->
    def on_keys_changed(&__block : KeysChangedSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("keys-changed", __callback)
    end

    alias SetFocusSignal = Window, Gtk::Widget ->
    def on_set_focus(&__block : SetFocusSignal)
      __callback = ->(_arg0 : LibGtk::Window*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Window.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("set-focus", __callback)
    end

  end
end

