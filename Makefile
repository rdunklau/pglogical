# contrib/pg_logical/Makefile

MODULE_big = pg_logical
PGFILEDESC = "pg_logical - logical replication"

OBJS = pg_logical_apply.o pg_logical_proto.o pg_logical_relcache.o

PG_CPPFLAGS = -I$(libpq_srcdir)
SHLIB_LINK = $(libpq)

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pg_logical_output
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
