# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := test_v8
DEFS_common :=

# Flags passed to all source files.
CFLAGS_common :=

# Flags passed to only C files.
CFLAGS_C_common :=

# Flags passed to only C++ files.
CFLAGS_CC_common :=

INCS_common := \
	-I$(srcdir)/src/common \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/src/common/v8coroutine

DEFS_debug := \
	'-DDEBUG'

# Flags passed to all source files.
CFLAGS_debug := \
	-g

# Flags passed to only C files.
CFLAGS_C_debug :=

# Flags passed to only C++ files.
CFLAGS_CC_debug :=

INCS_debug := \
	-I$(srcdir)/src/common \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/src/common/v8coroutine

DEFS_release := \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_release := \
	-O2

# Flags passed to only C files.
CFLAGS_C_release :=

# Flags passed to only C++ files.
CFLAGS_CC_release :=

INCS_release := \
	-I$(srcdir)/src/common \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/src/common/v8coroutine

OBJS := \
	$(obj).target/$(TARGET)/src/test/v8_coroutine/test.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/src/common/v8coroutine/libv8_coroutine.a $(obj).target/deps/v8/tools/gyp/v8.stamp $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a $(obj).target/deps/v8/tools/gyp/js2c.stamp $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_common :=

LDFLAGS_debug := \
	-g

LDFLAGS_release :=

LIBS := \
	-lrt

$(builddir)/test_v8: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/test_v8: LIBS := $(LIBS)
$(builddir)/test_v8: LD_INPUTS := $(OBJS) $(obj).target/src/common/v8coroutine/libv8_coroutine.a $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a
$(builddir)/test_v8: TOOLSET := $(TOOLSET)
$(builddir)/test_v8: $(OBJS) $(obj).target/src/common/v8coroutine/libv8_coroutine.a $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/test_v8
# Add target alias
.PHONY: test_v8
test_v8: $(builddir)/test_v8

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/test_v8

