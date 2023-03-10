# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org/>

ifndef __include_jni_mk__
__include_jni_mk__ := 1

JNI_MK_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

ifeq ($(HOST),)
    $(error [HOST] Missing value)
endif

ifneq ($(words $(HOST)),1)
    $(error [HOST] Value cannot have whitspaces)
endif

ifeq ($(wildcard $(JNI_MK_DIR)$(HOST)/include),)
    $(error [HOST] Unsupported host: $(HOST))
endif

INCLUDE_DIRS += $(JNI_MK_DIR)$(HOST)/include

endif # __include_jni_mk__
