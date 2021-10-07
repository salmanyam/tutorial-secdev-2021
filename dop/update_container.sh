#! /usr/bin/env bash

set -e # Exit on failure

DOP_DIR=${1:-/home/secdev/tutorial-secdev-2021/dop}
DOP_DIR="$(realpath "${DOP_DIR}")"

ExploitDir="/opt/metasploit-framework/embedded/framework/modules/exploits/linux/ftp"

do_copy() {
	src="$1"
	dst="$2"

	if [[ $src != "$dst" ]]; then
		mkdir -p "$(dirname "$dst")"
		echo cp -r "$src" "$dst"
		cp -r "$src" "$dst"
		chmod -R +r "$dst"
	fi
}

[ -d "${DOP_DIR}" ] || (echo "Cannot find $DOP_DIR" && false)
echo "DOP_DIR: $DOP_DIR"

do_copy "${DOP_DIR}/exploit/proftp_sreplace_dop.rb" "$ExploitDir"
do_copy "${DOP_DIR}/exploit/proftp_sreplace_dop_step.rb" "$ExploitDir"
