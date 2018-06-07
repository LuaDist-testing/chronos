-- This file was automatically generated for the LuaDist project.

version = "0.2-1"

-- LuaDist source
source = {
  tag = "0.2-1",
  url = "git://github.com/LuaDist-testing/chronos.git"
}
-- Original source
-- source = {
-- 	url = "https://github.com/ldrumm/chronos/archive/v0.2-1.zip",
-- 	tag = "v0.2-1",
-- 	dir = "chronos-0.2-1",
-- }

description = {
	license = "MIT/X11",
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	summary = "High resolution monotonic timers",
	homepage = "https://github.com/ldrumm/chronos",
}

build = {

	modules = {
		chronos = "src/chronos.c",
	},
	type = "builtin",
}

dependencies = {
	"lua >= 5.1",
}
package = "chronos"