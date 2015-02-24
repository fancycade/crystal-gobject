module Gtk
  module TreeSortable
    def sort_column_id(sort_column_id, order)
      __return_value = LibGtk.tree_sortable_get_sort_column_id((to_unsafe as LibGtk::TreeSortable*), Int32.cast(sort_column_id), order)
      __return_value
    end

    def has_default_sort_func
      __return_value = LibGtk.tree_sortable_has_default_sort_func((to_unsafe as LibGtk::TreeSortable*))
      __return_value
    end

    def set_default_sort_func(sort_func : LibGtk::TreeIterCompareFunc, user_data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_sortable_set_default_sort_func((to_unsafe as LibGtk::TreeSortable*), sort_func, user_data && user_data, destroy && destroy)
      __return_value
    end

    def set_sort_column_id(sort_column_id, order)
      __return_value = LibGtk.tree_sortable_set_sort_column_id((to_unsafe as LibGtk::TreeSortable*), Int32.cast(sort_column_id), order)
      __return_value
    end

    def set_sort_func(sort_column_id, sort_func : LibGtk::TreeIterCompareFunc, user_data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_sortable_set_sort_func((to_unsafe as LibGtk::TreeSortable*), Int32.cast(sort_column_id), sort_func, user_data && user_data, destroy && destroy)
      __return_value
    end

    def sort_column_changed
      __return_value = LibGtk.tree_sortable_sort_column_changed((to_unsafe as LibGtk::TreeSortable*))
      __return_value
    end

  end
end

