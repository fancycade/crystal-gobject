module Gtk
  class CellAreaContext < GObject::Object
    @gtk_cell_area_context : LibGtk::CellAreaContext*?
    def initialize(@gtk_cell_area_context : LibGtk::CellAreaContext*)
    end

    def to_unsafe
      @gtk_cell_area_context.not_nil!
    end

    def area
      __return_value = LibGtk.cell_area_context_get_area(to_unsafe.as(LibGtk::CellAreaContext*))
      Gtk::CellArea.new(__return_value)
    end

    def minimum_height
      __return_value = LibGtk.cell_area_context_get_minimum_height(to_unsafe.as(LibGtk::CellAreaContext*))
      __return_value
    end

    def minimum_width
      __return_value = LibGtk.cell_area_context_get_minimum_width(to_unsafe.as(LibGtk::CellAreaContext*))
      __return_value
    end

    def natural_height
      __return_value = LibGtk.cell_area_context_get_natural_height(to_unsafe.as(LibGtk::CellAreaContext*))
      __return_value
    end

    def natural_width
      __return_value = LibGtk.cell_area_context_get_natural_width(to_unsafe.as(LibGtk::CellAreaContext*))
      __return_value
    end

    def allocate(width, height)
      LibGtk.cell_area_context_allocate(to_unsafe.as(LibGtk::CellAreaContext*), Int32.new(width), Int32.new(height))
      nil
    end

    def allocation(width, height)
      LibGtk.cell_area_context_get_allocation(to_unsafe.as(LibGtk::CellAreaContext*), width, height)
      nil
    end

    def area
      __return_value = LibGtk.cell_area_context_get_area(to_unsafe.as(LibGtk::CellAreaContext*))
      Gtk::CellArea.new(__return_value)
    end

    def preferred_height(minimum_height, natural_height)
      LibGtk.cell_area_context_get_preferred_height(to_unsafe.as(LibGtk::CellAreaContext*), minimum_height, natural_height)
      nil
    end

    def preferred_height_for_width(width, minimum_height, natural_height)
      LibGtk.cell_area_context_get_preferred_height_for_width(to_unsafe.as(LibGtk::CellAreaContext*), Int32.new(width), minimum_height, natural_height)
      nil
    end

    def preferred_width(minimum_width, natural_width)
      LibGtk.cell_area_context_get_preferred_width(to_unsafe.as(LibGtk::CellAreaContext*), minimum_width, natural_width)
      nil
    end

    def preferred_width_for_height(height, minimum_width, natural_width)
      LibGtk.cell_area_context_get_preferred_width_for_height(to_unsafe.as(LibGtk::CellAreaContext*), Int32.new(height), minimum_width, natural_width)
      nil
    end

    def push_preferred_height(minimum_height, natural_height)
      LibGtk.cell_area_context_push_preferred_height(to_unsafe.as(LibGtk::CellAreaContext*), Int32.new(minimum_height), Int32.new(natural_height))
      nil
    end

    def push_preferred_width(minimum_width, natural_width)
      LibGtk.cell_area_context_push_preferred_width(to_unsafe.as(LibGtk::CellAreaContext*), Int32.new(minimum_width), Int32.new(natural_width))
      nil
    end

    def reset
      LibGtk.cell_area_context_reset(to_unsafe.as(LibGtk::CellAreaContext*))
      nil
    end

  end
end

