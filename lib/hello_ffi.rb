require 'hello_ffi/version'
require 'ffi'

module HelloFfi
  extend FFI::Library
  ffi_lib FFI::Library::LIBC
  attach_function :puts, [:string], :int
end
