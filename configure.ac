## Talisker: Developer Tools

## Copyright 2017 Mo McRoberts.
##
##  Licensed under the Apache License, Version 2.0 (the "License");
##  you may not use this file except in compliance with the License.
##  You may obtain a copy of the License at
##
##      http://www.apache.org/licenses/LICENSE-2.0
##
##  Unless required by applicable law or agreed to in writing, software
##  distributed under the License is distributed on an "AS IS" BASIS,
##  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##  See the License for the specific language governing permissions and
##  limitations under the License.

AC_INIT([Talisker],[develop])

AC_CONFIG_AUX_DIR([Library/BuildScripts])
AC_CONFIG_MACRO_DIR([Library/M4])

AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AC_CANONICAL_SYSTEM

AM_INIT_AUTOMAKE([foreign])
AM_MAINTAINER_MODE

## Determine default domain paths

TAL_CHECK_DOMAINS

## Require the standing auxiliary files so that Library/BuildScripts/Makefile
## can install them

AC_REQUIRE_AUX_FILE([ar-lib])dnl
AC_REQUIRE_AUX_FILE([compile])dnl
AC_REQUIRE_AUX_FILE([config.guess])dnl
AC_REQUIRE_AUX_FILE([config.sub])dnl
AC_REQUIRE_AUX_FILE([depcomp])dnl
AC_REQUIRE_AUX_FILE([install-sh])dnl
AC_REQUIRE_AUX_FILE([mdate-sh])dnl
AC_REQUIRE_AUX_FILE([missing])dnl
AC_REQUIRE_AUX_FILE([mkinstalldirs])dnl
AC_REQUIRE_AUX_FILE([py-compile])dnl
AC_REQUIRE_AUX_FILE([tap-driver.sh])dnl
AC_REQUIRE_AUX_FILE([test-driver])dnl
AC_REQUIRE_AUX_FILE([texinfo.tex])dnl
AC_REQUIRE_AUX_FILE([ylwrap])dnl

## Check for third-party tools

tools_subdirs=''
found_autoconf=no
found_automake=no
TAL_CONFIG_SUBDIR([Tools/autoconf-2.69],,[--bindir=$prefix/Developer/Tools],[tools_subdirs="$tools_subdirs autoconf-2.69";found_autoconf=yes])
if test $found_autoconf = no ; then
	TAL_CONFIG_SUBDIR([Tools/autoconf],,[--bindir=$prefix/Developer/Tools],[tools_subdirs="$tools_subdirs autoconf";found_autoconf=yes])
fi
TAL_CONFIG_SUBDIR([Tools/automake-1.15],,[--bindir=$prefix/Developer/Tools],[tools_subdirs="$tools_subdirs automake-1.15";found_automake=yes])
TAL_CONFIG_SUBDIR([Tools/idl],,,[tools_subdirs="$tools_subdirs idl"])
AC_SUBST([tools_subdirs])

AC_CONFIG_FILES([
Makefile
Library/Makefile
Library/M4/Makefile
Library/BuildScripts/Makefile
Tools/Makefile
])

AC_OUTPUT
