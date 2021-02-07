# Custom prompt
function Prompt {
  $Path = Split-Path -Path (Get-Location).Path -Leaf
  $Prompt = '{0} 🤬' -f $Path
  Write-Host $Prompt -NoNewline -ForegroundColor DarkCyan
  ' '
}

# sl == cd, always sets location to $HOME when I misstype sl instead of ls
# I hate sl
Remove-Alias -Name sl -Force

Set-Alias -Name la -Value ls
Set-Alias -Name ll -Value ls
Set-Alias -Name grep -Value sls

Set-Alias -Name ubuntu -Value ubuntu2004.exe
Set-Alias -Name suse -Value openSUSE-Leap-15.2.exe

# Add Visual Studio Build Tools to path
function Use-VSDevShell {
  $Location = (Get-Location).Path
  Import-Module 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll'
  Enter-VsDevShell '8bc09dbc' -DevCmdArguments '-arch=x64'
  Set-Location $Location
}

Set-Alias -Name vs -Value Use-VSDevShell

# Start Android emulator
function Start-Android {
  param (
    [string] $Type = "Phone"
  )

  Write-Host 'Starting Android emulator...' -ForegroundColor DarkGreen
  switch ($Type) {
    "Phone" {
      emulator.exe -avd Pixel_3a_API_30_x86
    }
    "Table" {
      emulator.exe -avd Pixel_C_API_30
    }
    Default {
      Write-Output 'Invalid emulator type...'
    }
  }
}

Set-Alias -Name sa -Value Start-Android

# Vim package manager
function ViPlug {
  nvim.exe +PlugInstall +qall
}

Set-Alias -Name vi -Value nvim.exe

# autocompletes for VCPKG
Import-Module 'C:\vcpkg\scripts\posh-vcpkg'

# conda command and autocompletes
C:\Users\rokserak\miniconda3\shell\condabin\conda-hook.ps1

