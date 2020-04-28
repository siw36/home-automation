$workingDir = "C:\Users\rhhkl\Documents\home-automation\gaming-setup"
$steamPath = "C:\Program Files (x86)\Steam\steam.exe"
$audioDesk = "Speakers (Heigh Definition Audio Device)"
$audioTV = "Headphones (Logitech BT Adapter Stereo)"

function steam () {
    $running = Get-Process steam -ErrorAction SilentlyContinue
    if (!$running) {
        Write-Host "Starting steam"
        Start-Process $steamPath
    } else {
         Write-Host "Steam already running"
    }
}

function steamBigPicture ($tv) {
    steam

    if ($tv) {
        Write-Host "Starting Big Picture mode"
        Start-Process $steamPath "steam://open/bigpicture"
    } else {
        Write-Host "Stopping Big Picture mode"
        Stop-Process (Get-Process steam)
        sleep 1
        steam
    }
}

function sound ($tv) {
    if ($tv) {
        Start-Process "$workingDir\nircmd.exe" -ArgumentList "setdefaultsounddevice $audioTV"
    } else {
        Start-Process "$workingDir\nircmd.exe" -ArgumentList "setdefaultsounddevice $audioDesk"
    }
}

function monitor ($tv) {
    if ($tv) {
        C:\Windows\System32\DisplaySwitch.exe /internal
    } else {
        C:\Windows\System32\DisplaySwitch.exe /external
    }
}
sound($false)
monitor($false)
steamBigPicture($false)