#include "bridge.h"
#include "logger.h"

__declspec(dllexport) void bridge_log(char* text) {
	char* argv1 = "CrystalLib";
	crystal_init(1, &argv1);
	crystal_log(text);
}