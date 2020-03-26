local cmder_prompt = "\x1b[1;32;40m{cwd} {git}{hg}{svn} \n\x1b[2;37;40m{lamb} \x1b[0m"
local lambda = "λ"



function my_prompt_filter()
    cwd = clink.get_cwd()
    prompt = "\x1b[1;31;40m{cwd} {git}{hg}{svn} \x1b[1;36;40m{lamb} \x1b[0m"
    new_value = string.gsub(prompt, "{cwd}", cwd)
    clink.prompt.value = string.gsub(new_value, "{lamb}", "λ")
end

clink.prompt.register_filter(my_prompt_filter, 1)

--local derp = "$E[1;32;40m$P$S{git}$S$_$E[1;30;40m{lamb}$S$E[0m"
--local backup = "\x1b[1;36;40m{cwd} {git}{hg}{svn} \n\x1b[1;30;40m{lamb} \x1b[0m"
--ree = string.gsub(prompt, "{cwd}", cwd)
--d = clink.os.getenv('$projects')
--proj = 'C:/projects'
--	a = os.execute('cd C:/projects && ls --color=auto')
--	prompt = "\x1b[1;31;40m{cwd} {git}{hg}{svn} \x1b[1;36;40m{lamb} \x1b[0m"

-- 	ORANGE: \033[48;2;255;165;0m
--[48;2;255;0m

-- 	weird lambda highlight prompt: prompt = "\x1b[1;31;40m{cwd} {git}{hg}{svn} \x1b[48;2;255;165;0m{lamb} \x1b[0m"

-- 	alias $p=cd %~%/projects $t ls --color=auto

--	alias $p=echo Changing directory to C:/projects.. $t cd %~%/projects $t ls --color $* --show-control-chars -F