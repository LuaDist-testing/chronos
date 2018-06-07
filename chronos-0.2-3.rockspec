-- This file was automatically generated for the LuaDist project.

package = "chronos"
version = "0.2-3"
-- LuaDist source
source = {
  tag = "0.2-3",
  url = "git://github.com/LuaDist-testing/chronos.git"
}
-- Original source
-- source = {
--    url = "https://github.com/ldrumm/chronos/archive/v0.2-3.zip",
--    tag = "v0.2-3",
--    dir = "chronos-0.2-3"
-- }
description = {
   summary = "High resolution monotonic timers",
   detailed = [[
Wrappers around a number of platform-specific monotonic
        timers. The highest resolution timer on each platform is used. This is
        typically `clock_gettime`, `gettimeofday`, `QueryPerformanceCounter`,
        or similar depending on the capabilities of the host. On a modern Linux
        system, nanosecond precision is achievable.
    ]],
   homepage = "https://github.com/ldrumm/chronos",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      chronos = "src/chronos.c"
   },
   platforms = {
      unix = {
         modules = {
            chronos = {
               libraries = {
                  "rt"
               },
               sources = "src/chronos.c"
            }
         }
      }
   }
}