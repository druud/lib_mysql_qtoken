AC_PREREQ([2.71])

AC_INIT([lib_mysql_qtoken],[0.0.1],[rvantol+github@isolution.nl])

AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR([config])
AC_CONFIG_HEADERS(config.h)

AM_INIT_AUTOMAKE(foreign)

#AC_REQUIRE(AC_CANONICAL_HOST)_LT_SET_OPTION([LT_INIT],[win32-dll])
#AC_REQUIRE(AC_CANONICAL_HOST)

LT_INIT
AC_PROG_CC

m4_include(config/ax_lib_mysql.m4)
AX_LIB_MYSQL(,,AC_MSG_ERROR("Can't find mysql library" ))

if test -n "$MYSQL_PLUGINDIR" && test "$libdir" == '${exec_prefix}/lib' ; then
  AC_MSG_NOTICE(setting libdir to mysql plugin dir $MYSQL_PLUGINDIR)
  libdir=$MYSQL_PLUGINDIR
  AC_SUBST(libdir)
fi

m4_include(config/ax_mysql_bin.m4)
AX_MYSQL_BIN

AC_C_CONST
AC_TYPE_SIZE_T
AC_CHECK_HEADERS(limits.h syslimits.h)

AC_CONFIG_FILES([ Makefile test/Makefile ])
AC_OUTPUT
