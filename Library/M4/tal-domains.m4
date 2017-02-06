dnl Talisker: Developer Tools

dnl Copyright 2017 Mo McRoberts.
dnl
dnl  Licensed under the Apache License, Version 2.0 (the "License");
dnl  you may not use this file except in compliance with the License.
dnl  You may obtain a copy of the License at
dnl
dnl      http://www.apache.org/licenses/LICENSE-2.0
dnl
dnl  Unless required by applicable law or agreed to in writing, software
dnl  distributed under the License is distributed on an "AS IS" BASIS,
dnl  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
dnl  See the License for the specific language governing permissions and
dnl  limitations under the License.

m4_pattern_forbid([^_?TAL_])

AC_DEFUN([TAL_CHECK_DOMAINS],[
_TAL_CHECK_DOMAIN([sys], [System], [/Talisker])
_TAL_CHECK_DOMAIN([devel], [Developer], [/Developer])
_TAL_CHECK_DOMAIN([local], [Local], [/Local])
_TAL_CHECK_DOMAIN([net], [Network], [/Network])
AS_VAR_SET([usersdir], [/Users])
AC_SUBST([usersdir])
AS_VAR_SET([shareduserdir], [/Users/Shared])
AC_SUBST([sharedusersdir])
AS_VAR_SET([volumesdir], [/Volumes])
AC_SUBST([volumesdir])
])

m4_define([_TAL_DOMAIN_VAR],[$1$2])
m4_define([_TAL_DOMAIN_EVAR],[$][{$1$2}])

dnl - _TAL_CHECK_DOMAIN(VAR-PREFIX, NAME, DEFAULT-PATH)
AC_DEFUN([_TAL_CHECK_DOMAIN],[
AS_LITERAL_IF([$1],,[m4_fatal([_TAL_CHECK_DOMAIN: $1 is not a literal])])dnl
AC_ARG_WITH([$1]-domain,[AS_HELP_STRING([--with-$1-domain=PATH],[Specify path for the $2 domain (default is $3)])],,[withval='$3'])
AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [dir]),           [$withval])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [dir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [appsdir]),       [']_TAL_DOMAIN_EVAR([$1],[dir])[/Applications'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [appsdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [docsdir]),       [']_TAL_DOMAIN_EVAR([$1],[dir])[/Documentation'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [docsdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [frameworksdir]), [']_TAL_DOMAIN_EVAR([$1],[libdir])[/Frameworks'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [frameworksdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [libdir]),        [']_TAL_DOMAIN_EVAR([$1],[dir])[/Library'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [libdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [prefsdir]),      [']_TAL_DOMAIN_EVAR([$1],[libdir])[/Preferences'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [prefsdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [supportdir]),    [']_TAL_DOMAIN_EVAR([$1],[libdir])[/Application Support'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [supportdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [toolsdir]),      ['${]_TAL_DOMAIN_VAR([$1],[dir])[}/Tools'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [toolsdir]))

AS_VAR_SET(_TAL_DOMAIN_VAR([$1], [utilsdir]),      ['${]_TAL_DOMAIN_VAR([$1],[appsdir])[}/Utilities'])
AC_SUBST(_TAL_DOMAIN_VAR([$1], [utilsdir]))

])
