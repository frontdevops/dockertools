# add this file in your .bashrc file:
# source docker.sh

dockerip() {
	docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

dockerips() {
	for dock in $(docker ps | tail -n +2 | cut -d" " -f1)
	do
		local dock_ip=$(dockerip $dock)
		[[ -n "$dock_ip" ]] && regex="s/$dock\s\{3\}/${dock:0:3}  $dock_ip/g;$regex"
	done

	docker ps -a | sed -e "$regex"
}

#EOF#
