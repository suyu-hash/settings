fish_vi_key_bindings

set -g theme_display_cmd_duration yes
set -g theme_display_git_master_branch yes
set -g theme_title_display_user no
#set -g theme_title_display_process yes
set -g theme_title_display_path no

set -g theme_display_date no 
set -g theme_date_format "+%F %H:%M"

set -g theme_newline_cursor yes


#set -g theme_newline_prompt '$ '
set -g theme_newline_prompt '> '
set -g fish_prompt_pwd_dir_length 0


### abbreviation

# git abbreviation
abbr -a gs git status
abbr -a ga git add
abbr -a gaa git add -A
abbr -a gcm git commimt -m
abbr -a gp git pull
abbr -a gc git checkout


# docker-compose abbreviation
abbr -a dc sudo docker-compose
abbr -a dcu sudo docker-compose up -d
abbr -a dcs sudo docker-compose stop
abbr -a dcrm sudo docker-compose rm
abbr -a dce sudo docker-compose exec
abbr -a dcps sudo docker-compose ps -a

# docker abbreviation
abbr -a db sudo docker build -t
abbr -a dr sudo docker run -it --rm
abbr -a di sudo docker images
abbr -a drmi sudo docker rmi