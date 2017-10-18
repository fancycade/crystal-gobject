require "./container"

module Gtk
  class IconView < Container
    @gtk_icon_view : LibGtk::IconView*?
    def initialize(@gtk_icon_view : LibGtk::IconView*)
    end

    def to_unsafe
      @gtk_icon_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Scrollable
    def activate_on_single_click
      __return_value = LibGtk.icon_view_get_activate_on_single_click(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def cell_area
      __return_value = LibGtk.icon_view_get_cell_area(to_unsafe.as(LibGtk::IconView*))
      Gtk::CellArea.new(__return_value)
    end

    def column_spacing
      __return_value = LibGtk.icon_view_get_column_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def columns
      __return_value = LibGtk.icon_view_get_columns(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def item_orientation
      __return_value = LibGtk.icon_view_get_item_orientation(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def item_padding
      __return_value = LibGtk.icon_view_get_item_padding(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def item_width
      __return_value = LibGtk.icon_view_get_item_width(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def margin
      __return_value = LibGtk.icon_view_get_margin(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def markup_column
      __return_value = LibGtk.icon_view_get_markup_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def model
      __return_value = LibGtk.icon_view_get_model(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def pixbuf_column
      __return_value = LibGtk.icon_view_get_pixbuf_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.icon_view_get_reorderable(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.icon_view_get_row_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def selection_mode
      __return_value = LibGtk.icon_view_get_selection_mode(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.icon_view_get_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.icon_view_get_text_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.icon_view_get_tooltip_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.icon_view_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area) : self
      __return_value = LibGtk.icon_view_new_with_area(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model) : self
      __return_value = LibGtk.icon_view_new_with_model(model.to_unsafe.as(LibGtk::TreeModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def convert_widget_to_bin_window_coords(wx, wy, bx, by)
      LibGtk.icon_view_convert_widget_to_bin_window_coords(to_unsafe.as(LibGtk::IconView*), Int32.new(wx), Int32.new(wy), bx, by)
      nil
    end

    def create_drag_icon(path)
      __return_value = LibGtk.icon_view_create_drag_icon(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      Cairo::Surface.new(__return_value)
    end

    def enable_model_drag_dest(targets, n_targets, actions : Gdk::DragAction)
      LibGtk.icon_view_enable_model_drag_dest(to_unsafe.as(LibGtk::IconView*), targets, Int32.new(n_targets), actions)
      nil
    end

    def enable_model_drag_source(start_button_mask : Gdk::ModifierType, targets, n_targets, actions : Gdk::DragAction)
      LibGtk.icon_view_enable_model_drag_source(to_unsafe.as(LibGtk::IconView*), start_button_mask, targets, Int32.new(n_targets), actions)
      nil
    end

    def activate_on_single_click
      __return_value = LibGtk.icon_view_get_activate_on_single_click(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def cell_rect(path, cell, rect)
      __return_value = LibGtk.icon_view_get_cell_rect(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil, rect)
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.icon_view_get_column_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def columns
      __return_value = LibGtk.icon_view_get_columns(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def cursor(path, cell)
      __return_value = LibGtk.icon_view_get_cursor(to_unsafe.as(LibGtk::IconView*), path, cell)
      __return_value
    end

    def dest_item_at_pos(drag_x, drag_y, path, pos : Gtk::IconViewDropPosition?)
      __return_value = LibGtk.icon_view_get_dest_item_at_pos(to_unsafe.as(LibGtk::IconView*), Int32.new(drag_x), Int32.new(drag_y), path, pos)
      __return_value
    end

    def drag_dest_item(path, pos : Gtk::IconViewDropPosition?)
      LibGtk.icon_view_get_drag_dest_item(to_unsafe.as(LibGtk::IconView*), path, pos)
      nil
    end

    def item_at_pos(x, y, path, cell)
      __return_value = LibGtk.icon_view_get_item_at_pos(to_unsafe.as(LibGtk::IconView*), Int32.new(x), Int32.new(y), path, cell)
      __return_value
    end

    def item_column(path)
      __return_value = LibGtk.icon_view_get_item_column(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def item_orientation
      __return_value = LibGtk.icon_view_get_item_orientation(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def item_padding
      __return_value = LibGtk.icon_view_get_item_padding(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def item_row(path)
      __return_value = LibGtk.icon_view_get_item_row(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def item_width
      __return_value = LibGtk.icon_view_get_item_width(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def margin
      __return_value = LibGtk.icon_view_get_margin(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def markup_column
      __return_value = LibGtk.icon_view_get_markup_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def model
      __return_value = LibGtk.icon_view_get_model(to_unsafe.as(LibGtk::IconView*))
      __return_value if __return_value
    end

    def path_at_pos(x, y)
      __return_value = LibGtk.icon_view_get_path_at_pos(to_unsafe.as(LibGtk::IconView*), Int32.new(x), Int32.new(y))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def pixbuf_column
      __return_value = LibGtk.icon_view_get_pixbuf_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.icon_view_get_reorderable(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.icon_view_get_row_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def selected_items
      __return_value = LibGtk.icon_view_get_selected_items(to_unsafe.as(LibGtk::IconView*))
      GLib::ListIterator(Gtk::TreePath, LibGtk::TreePath*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def selection_mode
      __return_value = LibGtk.icon_view_get_selection_mode(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.icon_view_get_spacing(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.icon_view_get_text_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.icon_view_get_tooltip_column(to_unsafe.as(LibGtk::IconView*))
      __return_value
    end

    def tooltip_context(x, y, keyboard_tip, model, path, iter)
      __return_value = LibGtk.icon_view_get_tooltip_context(to_unsafe.as(LibGtk::IconView*), x, y, keyboard_tip, model, path, iter)
      __return_value
    end

    def visible_range(start_path, end_path)
      __return_value = LibGtk.icon_view_get_visible_range(to_unsafe.as(LibGtk::IconView*), start_path, end_path)
      __return_value
    end

    def item_activated(path)
      LibGtk.icon_view_item_activated(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def path_is_selected(path)
      __return_value = LibGtk.icon_view_path_is_selected(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def scroll_to_path(path, use_align, row_align, col_align)
      LibGtk.icon_view_scroll_to_path(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), use_align, Float32.new(row_align), Float32.new(col_align))
      nil
    end

    def select_all
      LibGtk.icon_view_select_all(to_unsafe.as(LibGtk::IconView*))
      nil
    end

    def select_path(path)
      LibGtk.icon_view_select_path(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def selected_foreach(func, data)
      LibGtk.icon_view_selected_foreach(to_unsafe.as(LibGtk::IconView*), func, data ? data : nil)
      nil
    end

    def activate_on_single_click=(single)
      LibGtk.icon_view_set_activate_on_single_click(to_unsafe.as(LibGtk::IconView*), single)
      nil
    end

    def column_spacing=(column_spacing)
      LibGtk.icon_view_set_column_spacing(to_unsafe.as(LibGtk::IconView*), Int32.new(column_spacing))
      nil
    end

    def columns=(columns)
      LibGtk.icon_view_set_columns(to_unsafe.as(LibGtk::IconView*), Int32.new(columns))
      nil
    end

    def set_cursor(path, cell, start_editing)
      LibGtk.icon_view_set_cursor(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil, start_editing)
      nil
    end

    def set_drag_dest_item(path, pos : Gtk::IconViewDropPosition)
      LibGtk.icon_view_set_drag_dest_item(to_unsafe.as(LibGtk::IconView*), path ? path.to_unsafe.as(LibGtk::TreePath*) : nil, pos)
      nil
    end

    def item_orientation=(orientation : Gtk::Orientation)
      LibGtk.icon_view_set_item_orientation(to_unsafe.as(LibGtk::IconView*), orientation)
      nil
    end

    def item_padding=(item_padding)
      LibGtk.icon_view_set_item_padding(to_unsafe.as(LibGtk::IconView*), Int32.new(item_padding))
      nil
    end

    def item_width=(item_width)
      LibGtk.icon_view_set_item_width(to_unsafe.as(LibGtk::IconView*), Int32.new(item_width))
      nil
    end

    def margin=(margin)
      LibGtk.icon_view_set_margin(to_unsafe.as(LibGtk::IconView*), Int32.new(margin))
      nil
    end

    def markup_column=(column)
      LibGtk.icon_view_set_markup_column(to_unsafe.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def model=(model)
      LibGtk.icon_view_set_model(to_unsafe.as(LibGtk::IconView*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

    def pixbuf_column=(column)
      LibGtk.icon_view_set_pixbuf_column(to_unsafe.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def reorderable=(reorderable)
      LibGtk.icon_view_set_reorderable(to_unsafe.as(LibGtk::IconView*), reorderable)
      nil
    end

    def row_spacing=(row_spacing)
      LibGtk.icon_view_set_row_spacing(to_unsafe.as(LibGtk::IconView*), Int32.new(row_spacing))
      nil
    end

    def selection_mode=(mode : Gtk::SelectionMode)
      LibGtk.icon_view_set_selection_mode(to_unsafe.as(LibGtk::IconView*), mode)
      nil
    end

    def spacing=(spacing)
      LibGtk.icon_view_set_spacing(to_unsafe.as(LibGtk::IconView*), Int32.new(spacing))
      nil
    end

    def text_column=(column)
      LibGtk.icon_view_set_text_column(to_unsafe.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def set_tooltip_cell(tooltip, path, cell)
      LibGtk.icon_view_set_tooltip_cell(to_unsafe.as(LibGtk::IconView*), tooltip.to_unsafe.as(LibGtk::Tooltip*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil)
      nil
    end

    def tooltip_column=(column)
      LibGtk.icon_view_set_tooltip_column(to_unsafe.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def set_tooltip_item(tooltip, path)
      LibGtk.icon_view_set_tooltip_item(to_unsafe.as(LibGtk::IconView*), tooltip.to_unsafe.as(LibGtk::Tooltip*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def unselect_all
      LibGtk.icon_view_unselect_all(to_unsafe.as(LibGtk::IconView*))
      nil
    end

    def unselect_path(path)
      LibGtk.icon_view_unselect_path(to_unsafe.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def unset_model_drag_dest
      LibGtk.icon_view_unset_model_drag_dest(to_unsafe.as(LibGtk::IconView*))
      nil
    end

    def unset_model_drag_source
      LibGtk.icon_view_unset_model_drag_source(to_unsafe.as(LibGtk::IconView*))
      nil
    end

    alias ActivateCursorItemSignal = IconView -> Bool
    def on_activate_cursor_item(&__block : ActivateCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("activate-cursor-item", __callback)
    end

    alias ItemActivatedSignal = IconView, Gtk::TreePath ->
    def on_item_activated(&__block : ItemActivatedSignal)
      __callback = ->(_arg0 : LibGtk::IconView*, _arg1 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(IconView.new(_arg0), Gtk::TreePath.new(_arg1))
       __return_value
      }
      connect("item-activated", __callback)
    end

    alias MoveCursorSignal = IconView, Gtk::MovementStep, Int32 -> Bool
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::IconView*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(IconView.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias SelectAllSignal = IconView ->
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SelectCursorItemSignal = IconView ->
    def on_select_cursor_item(&__block : SelectCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("select-cursor-item", __callback)
    end

    alias SelectionChangedSignal = IconView ->
    def on_selection_changed(&__block : SelectionChangedSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("selection-changed", __callback)
    end

    alias ToggleCursorItemSignal = IconView ->
    def on_toggle_cursor_item(&__block : ToggleCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-item", __callback)
    end

    alias UnselectAllSignal = IconView ->
    def on_unselect_all(&__block : UnselectAllSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("unselect-all", __callback)
    end

  end
end

