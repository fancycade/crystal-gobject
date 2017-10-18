module GObject
  class Value
    include GObject::WrappedType

    def self.new(data : Array(GObject::G_Value__data__union)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::Value*)).tap do |object|
        object.data = data unless data.nil?
      end
    end

    @g_object_value : LibGObject::Value*?
    def initialize(@g_object_value : LibGObject::Value*)
    end

    def to_unsafe
      @g_object_value.not_nil!
    end

    def copy(dest_value)
      LibGObject.value_copy(to_unsafe.as(LibGObject::Value*), dest_value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def dup_object
      __return_value = LibGObject.value_dup_object(to_unsafe.as(LibGObject::Value*))
      GObject::Object.new(__return_value)
    end

    def dup_string
      __return_value = LibGObject.value_dup_string(to_unsafe.as(LibGObject::Value*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dup_variant
      __return_value = LibGObject.value_dup_variant(to_unsafe.as(LibGObject::Value*))
      GLib::Variant.new(__return_value)
    end

    def fits_pointer
      __return_value = LibGObject.value_fits_pointer(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def boolean
      __return_value = LibGObject.value_get_boolean(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def boxed
      LibGObject.value_get_boxed(to_unsafe.as(LibGObject::Value*))
      nil
    end

    def char
      __return_value = LibGObject.value_get_char(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def double
      __return_value = LibGObject.value_get_double(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def enum
      __return_value = LibGObject.value_get_enum(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def flags
      __return_value = LibGObject.value_get_flags(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def float
      __return_value = LibGObject.value_get_float(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def gtype
      __return_value = LibGObject.value_get_gtype(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def int
      __return_value = LibGObject.value_get_int(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def int64
      __return_value = LibGObject.value_get_int64(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def long
      __return_value = LibGObject.value_get_long(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def object
      __return_value = LibGObject.value_get_object(to_unsafe.as(LibGObject::Value*))
      GObject::Object.new(__return_value)
    end

    def param
      __return_value = LibGObject.value_get_param(to_unsafe.as(LibGObject::Value*))
      GObject::ParamSpec.new(__return_value)
    end

    def pointer
      LibGObject.value_get_pointer(to_unsafe.as(LibGObject::Value*))
      nil
    end

    def schar
      __return_value = LibGObject.value_get_schar(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def string
      __return_value = LibGObject.value_get_string(to_unsafe.as(LibGObject::Value*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uchar
      __return_value = LibGObject.value_get_uchar(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def uint
      __return_value = LibGObject.value_get_uint(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def uint64
      __return_value = LibGObject.value_get_uint64(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def ulong
      __return_value = LibGObject.value_get_ulong(to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def variant
      __return_value = LibGObject.value_get_variant(to_unsafe.as(LibGObject::Value*))
      GLib::Variant.new(__return_value)
    end

    def init(g_type)
      __return_value = LibGObject.value_init(to_unsafe.as(LibGObject::Value*), UInt64.new(g_type))
      GObject::Value.new(__return_value)
    end

    def init_from_instance(instance)
      LibGObject.value_init_from_instance(to_unsafe.as(LibGObject::Value*), instance.to_unsafe.as(LibGObject::TypeInstance*))
      nil
    end

    def peek_pointer
      LibGObject.value_peek_pointer(to_unsafe.as(LibGObject::Value*))
      nil
    end

    def reset
      __return_value = LibGObject.value_reset(to_unsafe.as(LibGObject::Value*))
      GObject::Value.new(__return_value)
    end

    def boolean=(v_boolean)
      LibGObject.value_set_boolean(to_unsafe.as(LibGObject::Value*), v_boolean)
      nil
    end

    def boxed=(v_boxed)
      LibGObject.value_set_boxed(to_unsafe.as(LibGObject::Value*), v_boxed ? v_boxed : nil)
      nil
    end

    def boxed_take_ownership=(v_boxed)
      LibGObject.value_set_boxed_take_ownership(to_unsafe.as(LibGObject::Value*), v_boxed ? v_boxed : nil)
      nil
    end

    def char=(v_char)
      LibGObject.value_set_char(to_unsafe.as(LibGObject::Value*), Int8.new(v_char))
      nil
    end

    def double=(v_double)
      LibGObject.value_set_double(to_unsafe.as(LibGObject::Value*), Float64.new(v_double))
      nil
    end

    def enum=(v_enum)
      LibGObject.value_set_enum(to_unsafe.as(LibGObject::Value*), Int32.new(v_enum))
      nil
    end

    def flags=(v_flags)
      LibGObject.value_set_flags(to_unsafe.as(LibGObject::Value*), UInt32.new(v_flags))
      nil
    end

    def float=(v_float)
      LibGObject.value_set_float(to_unsafe.as(LibGObject::Value*), Float32.new(v_float))
      nil
    end

    def gtype=(v_gtype)
      LibGObject.value_set_gtype(to_unsafe.as(LibGObject::Value*), UInt64.new(v_gtype))
      nil
    end

    def instance=(instance)
      LibGObject.value_set_instance(to_unsafe.as(LibGObject::Value*), instance ? instance : nil)
      nil
    end

    def int=(v_int)
      LibGObject.value_set_int(to_unsafe.as(LibGObject::Value*), Int32.new(v_int))
      nil
    end

    def int64=(v_int64)
      LibGObject.value_set_int64(to_unsafe.as(LibGObject::Value*), Int64.new(v_int64))
      nil
    end

    def long=(v_long)
      LibGObject.value_set_long(to_unsafe.as(LibGObject::Value*), Int64.new(v_long))
      nil
    end

    def object=(v_object)
      LibGObject.value_set_object(to_unsafe.as(LibGObject::Value*), v_object ? v_object.to_unsafe.as(LibGObject::Object*) : nil)
      nil
    end

    def param=(param)
      LibGObject.value_set_param(to_unsafe.as(LibGObject::Value*), param ? param.to_unsafe.as(LibGObject::ParamSpec*) : nil)
      nil
    end

    def pointer=(v_pointer)
      LibGObject.value_set_pointer(to_unsafe.as(LibGObject::Value*), v_pointer ? v_pointer : nil)
      nil
    end

    def schar=(v_char)
      LibGObject.value_set_schar(to_unsafe.as(LibGObject::Value*), Int8.new(v_char))
      nil
    end

    def static_boxed=(v_boxed)
      LibGObject.value_set_static_boxed(to_unsafe.as(LibGObject::Value*), v_boxed ? v_boxed : nil)
      nil
    end

    def static_string=(v_string)
      LibGObject.value_set_static_string(to_unsafe.as(LibGObject::Value*), v_string ? v_string.to_unsafe : nil)
      nil
    end

    def string=(v_string)
      LibGObject.value_set_string(to_unsafe.as(LibGObject::Value*), v_string ? v_string.to_unsafe : nil)
      nil
    end

    def string_take_ownership=(v_string)
      LibGObject.value_set_string_take_ownership(to_unsafe.as(LibGObject::Value*), v_string ? v_string.to_unsafe : nil)
      nil
    end

    def uchar=(v_uchar)
      LibGObject.value_set_uchar(to_unsafe.as(LibGObject::Value*), UInt8.new(v_uchar))
      nil
    end

    def uint=(v_uint)
      LibGObject.value_set_uint(to_unsafe.as(LibGObject::Value*), UInt32.new(v_uint))
      nil
    end

    def uint64=(v_uint64)
      LibGObject.value_set_uint64(to_unsafe.as(LibGObject::Value*), UInt64.new(v_uint64))
      nil
    end

    def ulong=(v_ulong)
      LibGObject.value_set_ulong(to_unsafe.as(LibGObject::Value*), UInt64.new(v_ulong))
      nil
    end

    def variant=(variant)
      LibGObject.value_set_variant(to_unsafe.as(LibGObject::Value*), variant ? variant.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def take_boxed(v_boxed)
      LibGObject.value_take_boxed(to_unsafe.as(LibGObject::Value*), v_boxed ? v_boxed : nil)
      nil
    end

    def take_string(v_string)
      LibGObject.value_take_string(to_unsafe.as(LibGObject::Value*), v_string ? v_string.to_unsafe : nil)
      nil
    end

    def take_variant(variant)
      LibGObject.value_take_variant(to_unsafe.as(LibGObject::Value*), variant ? variant.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def transform(dest_value)
      __return_value = LibGObject.value_transform(to_unsafe.as(LibGObject::Value*), dest_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def unset
      LibGObject.value_unset(to_unsafe.as(LibGObject::Value*))
      nil
    end

    def self.type_compatible(src_type, dest_type)
      __return_value = LibGObject.value_type_compatible(UInt64.new(src_type), UInt64.new(dest_type))
      __return_value
    end

    def self.type_transformable(src_type, dest_type)
      __return_value = LibGObject.value_type_transformable(UInt64.new(src_type), UInt64.new(dest_type))
      __return_value
    end

    def g_type
      (to_unsafe.as(LibGObject::Value*).value.g_type)
    end

    def data
      PointerIterator.new((to_unsafe.as(LibGObject::Value*).value.data)) {|__item| GObject::G_Value__data__union.new(__item) }
    end

    def data=(value : Array(GObject::G_Value__data__union))
      to_unsafe.as(LibGObject::Value*).value.data = value
    end

  end
end

