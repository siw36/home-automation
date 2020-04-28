# gaming-setup

These powershell scripts are used to switch between monitors and audio output devices.  

### Additional software
__nircmd__  
Used for setting the default audio output device.  
Source: http://www.nirsoft.net/utils/nircmd.html

### Usage
Configure the variables in `switcher_desk` and `switcher_tv`.  

Create a shortcut:
```
"%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "PATH_TO_THE_SCRIPT"
```

### What happens
__switcher_tv:__  
- Switches the audio output device to the living room sound system
- Switches to only display on the livin room TV
- Starts steam in big picture mode (for usage with a controller)

__switcher_desk:__  
- Switches the audio output device to headphones
- Switches to only display on the desk monitor
- Restarts steam in normal mode
