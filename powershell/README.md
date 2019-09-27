# README (to be complement)

## Tools

### [ColorTool](https://github.com/Microsoft/Terminal/tree/master/src/tools/ColorTool)

1. [Download](https://github.com/microsoft/terminal/releases/tag/1904.29002) and extract package, or install by choco.
   `choco install colortool`


## Customize Profile

1. Copy `Microsoft.PowerShell_profile.ps1` to `%UserProfile%\My Documents\WindowsPowerShell\`

### OpenSSH

1. Install w/ SSH agent 
   `choco install --force openssh -params '"/SSHAgentFeature"'`
2. Integrate with Git
   1. Get ssh.exe location
      `Get-Command ssh.exe`
      Assume result is `C:\Program Files\OpenSSH-Win64\ssh.exe`
   2. Set ssh command for Git
      `git config --global core.sshCommand "'C:/Program Files/OpenSSH-Win64/ssh.exe'"`

## Profile

### Customize

1. Copy `Microsoft.PowerShell_profile.ps1` to `%UserProfile%\My Documents\WindowsPowerShell\`

## Reference

1. [Enhance your PowerShell experience by automatically loading scripts](https://www.gsx.com/blog/bid/81096/enhance-your-powershell-experience-by-automatically-loading-scripts)
2. [Windows 1803 之後 git for windows 無法透過 Start-SshAgent 啓用 ssh agent - 需要一直輸入 passphrase 的問題](https://blog.alantsai.net/posts/2018/11/faq-start-sshagent-error-1058-on-windows-1803-cannot-use-ssh-agent)
