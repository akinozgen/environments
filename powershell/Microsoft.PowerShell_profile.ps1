Import-Module posh-git
Import-Module oh-my-posh
C:\Users\akinozgen\Documents\PowerShell\Modules\oh-my-posh\3.150.2\bin\posh-windows-amd64.exe --init --shell pwsh --config "~/Documents/Powershell/halflife.json" | Invoke-Expression

Set-Alias c clear
Set-Alias winfetch pwshfetch-test-1
Set-Alias ls lsd

function .. {
	cd ..
}

function q {
	exit
}

function l {
	lsd -h
}

function ll {
	lsd -lh
}

function lll {
	lsd -lah
}

function ytdl {
	youtube-dl --extract-audio --audio-format mp3 --output '%(title)s.%(ext)s'
}

function lastfiles ($length) {
	find.ps1 . -type f -printf '%T@ %p\n' | sort.ps1 -n | tail -$length | awk '{print $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15}' 
}

function ytmp3() {
	youtube-dl --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s" "$1"
}

function ytvideo() {
	youtube-dl --output "%(uploader)s|%(title)s.%(ext)s" "$1"
}