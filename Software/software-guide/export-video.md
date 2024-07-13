## Exporting video

This portion of the guide explains how to export video from the EEG/EMG sleep recording projects. Using Sirenia Acquisition, we first export video files in the `.webm` format, each of which are up to 24 hours long. Then, we use `ffmpeg` and a Windows PowerShell script to slice and convert these '.webm' files to sequential, hour-long '.mp4' video files. These videos can be used to track the XY movement of mice and serve as an aid for sleep state scoring.

**Software required**
- [Sirenia Acquisition](https://www.pinnaclet.com/sirenia-download.html)
- [ffmpeg](https://www.gyan.dev/ffmpeg/builds/)
- ['webm-splitter.ps1' Windows PowerShell script](../scripts/webm-splitter.ps1)
- Windows OS

### Guide

1. [Export video in Sirenia Acquisition](#export-video-in-sirenia-acquisition)
2. [Install ffmpeg](#install-ffmpeg)
3. [Slice and convert videos](#slice-and-convert-videos)

### Export video in Sirenia Acquisition

1. In the top toolbar, select 'File > Export > Video'. A small pop-up named 'Export Video' will appear.
2. In the 'File' prompt, choose the desired folder destination and filename
  * It's recommended to export all videos corresponding to each mouse into separate folders
3. Set the date/time range you would like to export in the 'Start Time' and 'End Time' prompts (format: MM/DD/YEAR HH:MM:SS.00)
  * **Video duration should be no longer than 24 hours (24:00:00)**
4. Select the `.webm` file extension
5. Select the desired camera video source (select only one source per video export)
6. Click 'OK'. A new 'Exporting Video' window will appear with a green progress bar.
7. Once complete, a new window will pop up asking 'Optimize webm file?'. Click 'Yes'.
  
  ![Export Video pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/export-video.JPG)
  
  **Figure 1:** _A pop-up window named 'Export Video' will appear after selecting the 'File > Export > Video' option in the top toolbar._

### Install ffmpeg

This portion of the guide explains how to install `ffmpeg`, which is used to split and convert `.webm` videos to `.mp4`.

1. Download the lastest ffmpeg essentials build for Windows OS [here](https://www.gyan.dev/ffmpeg/builds/)
2. Extract the folder to the `C:` local disk drive
3. Right click the Windows Start Menu icon in the lower left taskbar, then select 'System'

![Windows System Settings](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/system-settings.JPG)

**Figure 2:** _Access the System Settings by right clicking the Windows Start Menu icon and selecting 'System'._

4. Click on 'Advanced system settings'
5. A new 'System Properties' window will appear. Click 'Environment Variables...'
6. Under 'System variables' highlight the 'Path' variable and click 'Edit'

![Windows Environment Variables](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/environment-variables.JPG)

**Figure 3:** _Click 'Advanced system settings' (1), then click 'Environment Variables...' (2). In the 'Environment Variables' window, highlight 'Path' (3), then click 'Edit' (4)._

7. A new 'Edit environment variable' window will open. Click 'New', then paste the ffmpeg `bin` directory address (e.g. `C:\ffmpeg-7.0.1-essentials_build\bin`). Then click 'OK'

![Creating a new Windows PATH Environment Variable](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/new-variable.JPG)

**Figure 4:** _In the 'Edit environment variable' window, click 'New', then paste the ffmpeg `bin` directory address._

8. To test if ffmpeg was installed successfully, launch the 'Command Prompt' and execute the command `ffmpeg`. The terminal should output the ffmpeg version, build, and configuration

![Verifying ffmpeg installation](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/ffmpeg.JPG)

**Figure 5:** _In the 'Command Prompt', run the `ffmpeg` command to see an output similar to this figure._

### Slice and convert videos

This portion of the guide explains how to slice and convert multi-hour long '.webm' videos to sequential, 1-hour long videos ('.mp4' format)

1. Download the `webm-splitter.ps1` Windows PowerShell script [here](.././scripts/webm-splitter.ps1)
2. Open Windows PowerScript
3. In the terminal, change the current working directory to the folder where the script was installed using the `cd` command (e.g. `cd C:\Users\Rivasda\Documents\powershell-script`)
4. Request authority to run the script by running this command : `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
  * A prompt for the 'Execution Policy Change' will appear. Enter `Y` 
5. Finally, run the script using this command: `.\webm-splitter.ps1`
6. When prompted, paste and enter the folder path containing the '.webm' files (e.g. `C:\Users\Rivasda\Downloads\2024_04_30`)
  * Within the folder path, the script will create a subfolder for each '.webm' file. The output videos will be saved to the corresponding subfolder (named after the source video file)

![Running the Windows PowerShell webm-splitter script](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/webm-splitter.jpg)

**Figure 6:** _An example of the user input to run the `webm-splitter.ps1` script (left window) and the resulting output while it's running (right window)._

7. Check the video outputs and ensure the files are not corrupt

[← Return to setup guide](../readme.md#setup-guide)