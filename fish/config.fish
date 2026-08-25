if status is-interactive

	starship init fish | source

	set fish_greeting

	set cowname $(ls /usr/share/cowsay/cows/ | xargs shuf -n1 -e)
	set cowname (string sub -e -4 $cowname)

	echo "($cowname)"
	fortune | cowsay -f $cowname

	set -e cowname
end

if status is-login
    if uwsm check may-start && uwsm select
		exec uwsm start default
    end
end
