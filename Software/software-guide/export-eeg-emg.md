## Exporting the EEG/EMG channels

This portion of the guide explains how to export a video-EEG experiment in Sirenia Acquisition. EEG/EMG data can be exported to an `.edf` format, which can then be analyzed using the MATLAB script, Sirenia software packages, or third-party software.

**Software required**
- [Sirenia Acquisition](https://www.pinnaclet.com/sirenia-download.html)
- Windows OS

By default, the project files are in `.pvfs` format, which are located in
the folder destination that was selected in the 'File:' prompt during the
project setup. This filetype will store project info, EEG/EMG data, and video. Additionally, this format can be opened with Sirenia software packagages, which in that case it's not necessary to export data to a different file format.

If you plan to analyze the channels using the MATLAB script, it's
required you export data in the `.edf` format:

**Steps**
1. In the top toolbar, select 'File > Export > EDF
    * A small pop-up named 'Export EDF' will appear
2. Select all of the EEG/EMG channels used in the experiment
    * If you ran more than one mouse in a project/experiment, verify which EEG/EMG channels correspond to which mouse. You may choose to export only the EEG/EMG channels corresponding to each mouse into separate files
3. In the 'Filename' prompt, choose the desired folder destination
4. Set the date/time range you would like to export in the 'Start Time' and 'End Time' prompts (format: MM/DD/YEAR HH:MM:SS.00)
4. Click 'OK'

![Export EDF pop-up window](https://raw.githubusercontent.com/GergelyTuri/chronicSleepRecordings/master/images/export-edf.JPG)

**Figure 1:** _A pop-up window named 'Export EDF' will appear after selecting the 'File > Export > EDF' option in the top toolbar. Note how the EEG/EMG channel names of one amplifier are distinguished from another amplifier (e.g. EEG1 vs. EEG1.1, EMG vs. EMG.1, etc.)_

[← Return to setup guide](../readme.md#setup-guide)