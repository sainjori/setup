set cursorline
set number
set mouse=a

nmap <silent> <RIGHT> :cnext<CR>
nmap <silent> <RIGHT><RIGHT> :cnfile<CR><C-G>
	nmap <silent> <LEFT>  :cprev<CR>
nmap <silent> <LEFT><LEFT> :cpfile<CR><C-G>
