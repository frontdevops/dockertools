# add this file in your .bashrc file:
# source docker.sh

dockerip() {
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

dockerips() {
	for dock in $(docker ps|tail -n +2|cut -d" " -f1)
	do
		local dock_ip=$(dockerip $dock)
		[[ -n "$dock_ip" ]] && regex="s/$dock\s\{4\}/${dock:0:4}  $dock_ip/g;$regex"
	done

	docker ps -a | sed -e "$regex"
}


alias _id_='docker ps -l -q'

#EOF#
