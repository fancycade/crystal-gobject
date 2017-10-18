module GLib
  class VariantDict
    include GObject::WrappedType

    @g_lib_variant_dict : LibGLib::VariantDict*?
    def initialize(@g_lib_variant_dict : LibGLib::VariantDict*)
    end

    def to_unsafe
      @g_lib_variant_dict.not_nil!
    end

    def self.new(from_asv) : self
      __return_value = LibGLib.variant_dict_new(from_asv ? from_asv.to_unsafe.as(LibGLib::Variant*) : nil)
      cast GLib::VariantDict.new(__return_value)
    end

    def clear
      LibGLib.variant_dict_clear(to_unsafe.as(LibGLib::VariantDict*))
      nil
    end

    def contains(key)
      __return_value = LibGLib.variant_dict_contains(to_unsafe.as(LibGLib::VariantDict*), key.to_unsafe)
      __return_value
    end

    def end
      __return_value = LibGLib.variant_dict_end(to_unsafe.as(LibGLib::VariantDict*))
      GLib::Variant.new(__return_value)
    end

    def insert_value(key, value)
      LibGLib.variant_dict_insert_value(to_unsafe.as(LibGLib::VariantDict*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def lookup_value(key, expected_type)
      __return_value = LibGLib.variant_dict_lookup_value(to_unsafe.as(LibGLib::VariantDict*), key.to_unsafe, expected_type ? expected_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      GLib::Variant.new(__return_value)
    end

    def ref
      __return_value = LibGLib.variant_dict_ref(to_unsafe.as(LibGLib::VariantDict*))
      GLib::VariantDict.new(__return_value)
    end

    def remove(key)
      __return_value = LibGLib.variant_dict_remove(to_unsafe.as(LibGLib::VariantDict*), key.to_unsafe)
      __return_value
    end

    def unref
      LibGLib.variant_dict_unref(to_unsafe.as(LibGLib::VariantDict*))
      nil
    end

  end
end

