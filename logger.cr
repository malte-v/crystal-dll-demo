fun init = crystal_init(argc : Int32, argv : UInt8**) : Void
  GC.init
  LibCrystalMain.__crystal_main(argc, argv)
end

fun log = crystal_log(text: UInt8*): Void
  puts String.new(text)
end