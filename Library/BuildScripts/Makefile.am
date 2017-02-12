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

buildscriptsdir = ${devellibdir}/BuildScripts

# We arrange things this way because if --target is specified (which it
# will be from time to time), we don't actually need automake's install-time
# filename tranformation to happen for these files, as despite being
# executable, they're architecture-independent.
#
# Therefore, to avoid this, we install them as _DATA, but add a hook that
# invokes `chmod +x` on the installed files.

SCRIPTFILES = \
	ar-lib \
	compile config.guess config.sub \
	depcomp \
	install-sh \
	mdate-sh missing mkinstalldirs \
	py-compile \
	tap-driver.sh test-driver \
	ylwrap

dist_buildscripts_DATA = $(SCRIPTFILES) \
	texinfo.tex \
	tal-m4.mk

install-data-hook:
	for i in $(SCRIPTFILES) ; do chmod +x $(DESTDIR)$(buildscriptsdir)/$$i || exit 1 ; done
